@component('mail::message')
# Sie haben eine neue Nachricht

@component('mail::panel')
<div style="width:100%; text-align:center; font-size:30px; font-height:bold;">
New message
</div>

Name: {{$message['name']}}<br>
Phone: {{$message['phone']}}<br>
Message: {{$message['message']}}<br>


@endcomponent

Thanks from,<br>
Team {{ config('app.name') }}
@endcomponent
