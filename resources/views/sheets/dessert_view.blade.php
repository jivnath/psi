

            <table class="table table-borderd" style="text-align: center">
                <thead>
                <th>Date</th>
                <th>Time</th>
                <th>No</th>
                <th>Staff No.</th>
                <th>Country</th>
                <th>Name（フリガナ）</th>
                <th>Name（氏名）</th>
                <th>Tel No</th>
                <th>Responsible</th>
                <th>Conformation the day before</th>
                <th>Responsible</th>
                <th>Conform 3 hours ago</th>
                <th>Arrival time in case of late arrival</th>
                <th>Reason for late arrival and absence</th>
                <th>Call Medium/Through</th>
                </thead>
                <tbody>
                @foreach($dessert as $dessert_row)
                    @for($i=1;$i<=$dessert_row->total_require;$i++)
                        <tr>
                            <td> {{$dessert_row->date}} </td>
                            <td> {{$dessert_row->time}} </td>
                            <td> {{$i}} </td>
                            <td class="contenteditable" contenteditable="true">  </td>
                            <td>  </td>
                            <td>  </td>
                            <td>  </td>
                            <td>  </td>
                            <td>  </td>
                            <td> ok </td>
                            <td>  </td>
                            <td>  </td>
                            <td>  </td>
                            <td>  </td>
                            <td>  </td>
                        </tr>
                        @endfor
                        @if($dessert_row->total_require==0)
                        <tr>
                            <td> {{$dessert_row->date}} </td>
                            <td> {{$dessert_row->time}} </td>
                        <td colspan='13'>Not available, <a href="{{Route('shift.show',$dessert_row->master_id)}}" target='_blank'>Add here </a></td>
                        </tr>
                        @endif
                    @endforeach
                </tbody>

            </table>

            <script>
                $('body').on('focus', '[contenteditable]', function(ee) {
                    const $this = $(this);
                    $this.data('before', $this.html());
                    console.log('preparation..');
                }).on('blur keyup paste input', '[contenteditable]', function(e) {
                    const $this = $(this);
                    if ($this.data('before') !== $this.html()) {
                        $this.data('before', $this.html());
                        $this.trigger('change');

                        console.log('after put');
                    })
                });
                function findDetails(){
                    alert("success");

                    $.ajax({
                        type:"GET",
                        url:"/dessert/findDetails",
                        data:{'psi_num':psi_num},
                        dataType:'json',
                        success:function(data){
                            console.log(data['name']);
                        }

                    });
                }
            </script>