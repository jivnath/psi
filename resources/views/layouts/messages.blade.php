@if(Session::has('success'))
    <div class="msg alert alert-success" role="alert">
        <strong>Success : </strong> {{Session::get('success')}}
    </div>
@endif
@if(Session::has('error'))
    <div class="msg alert alert-danger" role="alert">
        <strong>Error : </strong>{{Session::get('error')}}
    </div>
@endif

@if (count($errors) > 0)
    <div class=" msg alert alert-danger" role="alert">
        <strong>Errors : </strong>
        <ul>
            @foreach($errors->all() as $error)
                <li>{{$error}}</li>
            @endforeach
        </ul>
    </div>
@endif

@push('scripts')
    <script>
        $(function () {
            setTimeout(function () {
                $(".msg").hide(500);
            }, 4000);
        });
    </script>
@endpush