@extends('layout.master')
@section('content')
<div class="container">
	 <h2 class="mb-4">Assignment3</h2>
	 <p><b>Finds the rows that contains vendor id in
vendor_ids coloumn</b></p>
	 <form action="{{route('search')}}" method="post">
	 	@csrf
	 	<div class=" row form-group">
	 		<div class="col-md-4">
	 		<input type="text" class="form-control border" name="keyword" value="{{old('keyword')}}">
	 		</div>
	 		<div class="col-md-1">
	 			<input type="submit" class="btn btn-success" name="submit" value="Search">
	 		</div>

	 	</div>
	 </form>
	 <table class="table table-bordered">
	 	<thead>
	 		<th>Order Id</th>
	 		<th>Vendor Ids</th>
	 		<th>Order Status</th>
	 		<th>Description</th>
	 	</thead>
	 	<tbody>
	 		@if(count($data) > 0)
	 		@foreach($data as $val)
	 		<tr>
	 			<td>{{$val->order_id}}</td>
	 			<td>{{$val->vendor_ids}}</td>
	 			<td>{{$val->order_status}}</td>
	 			<td>{{$val->discription}}</td>
	 		</tr>
	 		@endforeach
	 		@else 
	 		<tr>
	 			<td colspan="4">No data found</td>
	 		</tr>
	 		@endif
	 	</tbody>
	 </table>
	  <p>{{$data->links()}}</p>
</div>
@endsection
