@extends('layout.master')
@section('content')
<div class="container">
	 <h2 class="mb-4">Assignment</h2>
	 <ol>
      <li>
create code for fetch data from following endpoind and store it to database table<br>
endpoint : https://vpic.nhtsa.dot.gov/api/vehicles/decodevin/5UXWX7C5*BA?format=json&modelyear=2011</li>

<li>
import following table into any database and create api for  fetch data as per sender and reciver ids serial manner send and receive,<br>
table user download from link :  https://easyupload.io/e9e5fv
</li>
<li>
create table as followin data and find the rows that contains 89 in vendor_ids coloumn<br>

  order_id - 1<br>
  vendor_ids - 56,89,75,9<br>
  order_status - 1<br>
  discription - test description<br><br>

  order_id - 2<br>
  vendor_ids - 452,102,89,4<br>
  order_status - 1<br>
  discription - test description<br><br>

  order_id - 3<br>
  vendor_ids - 56,89,452,9<br>
  order_status - 1<br>
  discription - test description<br><br>
</li>
<li>
upload any file using curl
</li>
</ol>
</div>
@endsection