@extends('layout.master')
@section('content')
<div class="container">
	 <h2 class="mb-4">Assignment2</h2>
	 <p><b>Created Api to fetch data as per sender and reciver ids. To test, add parameter as sender id and receiver id in url</b></p>
	 <table class="table table-bordered">
	 	<thead>
	 		<th>Msg Id</th>
	 		<th>Sender Id</th>
	 		<th>Receiver Id</th>
	 		<th>Message</th>
	 		<th>Message File Path</th>
	 		<th>File type</th>
	 		<th>Message Delete Flag</th>
	 	</thead>
	 	<tbody>
	 		@if(count($data) > 0)
	 		@foreach($data as $val)
	 		<tr>
	 			<td>{{$val->msg_id}}</td>
	 			<td>{{$val->sender_u_id}}</td>
	 			<td>{{$val->receiver_u_id}}</td>
	 			<td>{{$val->mesasge}}</td>
	 			<td>{{$val->msg_file_path}}</td>
	 			<td>{{$val->file_type}}</td>
	 			<td>{{$val->msg_delete_flag}}</td>
	 		</tr>
	 		@endforeach
	 		@else 
	 		<tr>
	 			<td colspan="7">No data found</td>
	 		</tr>
	 		@endif
	 	</tbody>
	 </table>
	  <p>{{$data->links()}}</p>
</div>
@endsection
