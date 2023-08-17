<?php

namespace App\Http\Controllers;

use Mail;
use App\Mail\TransactionSuccess;

use App\Transaction;
use App\TransactionDetail;
use App\TravelPackage;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use Midtrans\Config;
use Midtrans\Snap;


class CheckoutController extends Controller
{
    public function index(Request $request, $id)
    {
        $item = Transaction::with(['details', 'travel_package','user'])->findOrFail($id);
        return view('pages.checkout',[
            'item' => $item
        ]);
    }

    public function process(Request $request, $id)
    {
        $travel_package = TravelPackage::findOrFail($id);

        $transaction = Transaction::create([
            'travel_packages_id' => $id,
            'users_id' => Auth::user()->id,
            'additional_visa' => 0,
            'transaction_total' => $travel_package->price,
            'transaction_status' => 'IN_CART'
        ]);

        TransactionDetail::create([
            'transaction_id' => $transaction->id,
            'username' => Auth::user()->username,
            'nationality' => 'ID',
            'is_visa' => false,
            'doe_passport' => Carbon::now()->addYears(5)
        ]);

        return redirect()->route('checkout', $transaction->id);
    }


    public function remove(Request $request, $detail_id)
    {
        $item = TransactionDetail::findorfail($detail_id);

        $transaction =Transaction::with(['details', 'travel_package'])
            ->findOrfail($item->transaction_id);

            if($item->is_visa)
            {
                $transaction->transaction_total -= 190;
                $transaction->additional_visa -= 190;
            }

            $transaction->transaction_total -= $transaction->travel_package->price;

            $transaction->save();
            $item->delete();

            return redirect()->route('checkout', $item->transaction_id);
    }


    public function create(Request $request, $id)
    {
        $request->validate([
            'username' => 'required|string|exists:users,username',
            'is_visa' => 'required|boolean',
            'doe_passport' => 'required'
        ]);

        $data = $request->all();
        $data['transaction_id'] = $id;

        TransactionDetail::create($data);

        $transaction = Transaction::with(['travel_package'])->find($id);

        if($request->is_visa)
        {
            $transaction->transaction_total += 190;
            $transaction->additional_visa += 190;
        }

        $transaction->transaction_total += $transaction->travel_package->price;

        $transaction->save();

        return redirect()->route('checkout',$id);
    }

    public function success(Request $request, $id)
    {
        $transaction = Transaction::with(['details','travel_package.galleries','user'])->findOrFail($id);
        $transaction->transaction_status = 'PENDING';

        $transaction->save();

         // Set konfigurasi midtrans
         config::$serverKey = config('midtrans.serverKey');
         config::$isProduction = config('midtrans.isProduction');
         config::$isSanitized= config('midtrans.isSanitized');
         config::$is3ds = config('midtrans.is3ds');


         //buat array untuk dikirim ke midtrans
         $midtrans_params=[
             'transaction_details' => [
                 'order_id' => 'MIDTRANS-' . $transaction->id,
                 'gross_amount' => (int) $transaction->transaction_total
             ],
             'customer_details' => [
                 'first_name' => $transaction->user->name,
                 'email' => $transaction->user->email,
             ],
             'enable_payment' => ['gopay'],
             'vtweb' => []
         ];

         try {
             //Ambil halaman payment midtrans
             $paymentUrl = Snap::createTransaction($midtrans_params)->redirect_url;

             //redirect ke halaman midtrans
             header('Location: ' . $paymentUrl);

         }catch (Exception $e) {

             echo $e->getMessage();
         }





            //return  $transaction;

            //kirim email tiket
          //'Mail'::to($transaction->user)->send(new TransactionSuccess($transaction));

        //return view('pages.success');
    }

}


