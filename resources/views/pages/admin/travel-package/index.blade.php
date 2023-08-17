@extends('layouts.admin')

@section('content')




<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Paket Travel</h1>
        <a href="{{ route('travel-package.create') }}" class="btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-plus fa-sm text-white-50"></i> Tambah Paket Travel
        </a>
    </div>

<div class="row">
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="example1" width="100%" collspacing="0">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Location</th>
                        <th>Type</th>
                        <th>Departur Date</th>
                        <th>Type</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                @forelse ($items as $item)
                    <tr>
                        <td>{{ $item->id }}</td>
                        <td>{{ $item->title }}</td>
                        <td>{{ $item->location }}</td>
                        <td>{{ $item->type }}</td>
                        <td>{{ $item->departure_date }}</td>
                        <td>{{ $item->type }}</td>
                        <td>
                            <a href="{{ route('travel-package.edit', $item->id) }}" class="btn btn-info">
                                <i class="fa fa-pencil-alt"></i>
                            </a>
                            <form action="{{ route('travel-package.destroy', $item->id)}}" method="post" class="d-inline">
                            @csrf
                            @method('delete')
                                <button class="btn btn-danger">
                                    <i class="fa fa-trash"></i>
                                </button>
                            </form>
                        </td>
                @empty
                    <tr>
                        <td colspan="7" class="text-center">
                            DATA KOSONG
                        </td>
                    </tr>
                @endforelse
                </tbody>
            </table>

        </div>
    </div>
</div>

</div>




@endsection
@push('table-script')
    <script>
            $(document).ready(function() {
                $('#example1').dataTable();
            });
        </script>
@endpush