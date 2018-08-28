@extends('layouts.app')

@section('content')
    <div class="page-header">
        <h1>{{ $cells->first()->company->name }}</h1>
    </div>

    <div id="validation" class="alert alert-danger" style="display:none"></div>
    <div class="container">
        <table class="table table-striped" >
             <thead>
                <tr>
                    @foreach($columns as $column)
                        <th style="word-wrap:break-word">{{__('employee.'. ucwords(str_replace('_','',ucwords($column,'_'))))}}</th>
                    @endforeach

                </tr>
            </thead>
            <tbody>
                @if(count($cells) > 0)
                    @foreach($cells as $index => $cell)
                        <tr>
                            @foreach($columns as $column)
                                @if($column != 'updated_at' && $column != 'psi_number')
                                    <td class="contenteditable"
                                        data-column = "{{ $column }}"
                                        data-old = "" 
                                        contenteditable="true">
                                        @if ($column == 'sex')
                                            <select >
                                            @foreach($sex as $s)
                                                <option value="$s->id"> {{ $s->name }} </option>
                                            @endforeach                                                
                                            </select>
                                        @else
                                            {{ $cell->{$column} }}
                                        @endif
                                    </td>
                                @else
                                    <td>{{ $cell->{$column} }}</td>
                                @endif
                            @endforeach
                        </tr>
                    @endforeach
                @else 
                    <tr>
                        <td colspan="6">No sheets are uploaded</td>
                    </tr>
                @endif
            </tbody>
        </table>
    </div>
    <input type="hidden" id="companyId" value ="{{ $companyId }}"/>
@endsection


@push('scripts')
<script>
    $(document).ready(function(){
        var tds = document.querySelectorAll("td.contenteditable");
        tds.forEach(function(el, index){
            employee.inlineEditable(el, function(response){
                if(response.errors){
                    $('#validation').text(response.message);
                    $('#validation').show();
                }
            });
        })
    });
    
</script>
@endpush
