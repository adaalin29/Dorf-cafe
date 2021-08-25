@component('mail::message')
# Sie haben eine neue Nachricht

@component('mail::panel')
<div style="width:100%; text-align:center; font-size:30px; font-height:bold;">
New reservation
</div>

Name: {{$message['name']}}<br>
Phone: {{$message['phone']}}<br>
Email: {{$message['email']}}<br>
Date: {{$message['date']}}<br>
Nr of guests: {{$message['nr']}}<br>
Hour: {{$message['hour']}}<br>


@endcomponent

Thanks from,<br>
Team {{ config('app.name') }}
@endcomponent
