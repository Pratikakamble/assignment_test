@extends('layout.master')
@section('content')
<div class="container">
	 <h2 class="mb-4">Assignment1 : </h2>
	 <p><b>Data fetched from given url and saved in database table.</b></p>
	 <table class="table table-bordered">
	 	<thead>
	 		<th width="25%">Value</th>
	 		<th width="25%">ValueId</th>
	 		<th width="25%">Variable</th>
	 		<th width="25%">VariableId</th>
	 	</thead>
	 	<tbody>
	 		@if(count($data) > 0)
	 		@foreach($data as $val)
	 		<tr>
	 			<td>{{$val->Value}}</td>
	 			<td>{{$val->ValueId}}</td>
	 			<td>{{$val->Variable}}</td>
	 			<td>{{$val->VariableId}}</td>
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
