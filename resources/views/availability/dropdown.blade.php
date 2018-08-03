@for ($i = 1; $i <= 24; $i++)
    @if($i < 10)
        <option value="{{ '0'.$i }}"> {{ '0'.$i }} </option>
    @else
        <option value="{{ $i }}"> {{ $i }} </option>
    @endif
@endfor                                    
