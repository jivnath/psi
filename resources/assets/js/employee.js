function Employee(){
    let self = this;
    self.inlineEditable = function(el, calback){
        psi.setEventListener(el, function(event){
            if(event.type == 'focus'){
                $(el).attr('data-old', $(el).text());
            }else if(event.type == 'blur'){
                self.prepareDataAndSave(el, event, calback);
            }else if(event.type == 'keypress' || event.type == 'keyup'){
                if(event.keyCode == 13){
                    if (event.preventDefault) {
                        event.preventDefault();
                    } else {
                        event.returnValue = false;
                    }

                    if(event.type == 'keyup'){
                       self.focusNext(el);
                    }
                }
            }
        });
    }

    self.prepareDataAndSave = function(el, event, calback){
        var data = {};
        data['company_id'] = $('#companyId').val();
        data['psi_num'] = $(event.target).parent('tr').find('td:first').text();
        data['column'] = $(event.target).attr('data-column');
        data['value'] = $(event.target).text();
    
        let oldValue = $(el).attr('data-old');
        let newValue = data['value'];
        if(oldValue != newValue){
            self.updateEmployeeCell(data, calback);
        }
    }   

    self.updateEmployeeCell = function(data, calback) {
        console.log('API');
        axios.post('/employees/updateCell', data)
            .then(function (response) {
                calback(response.data);
            })
            .catch(function (error) {
                calback(error.response.data);
            });
    }

    self.focusNext = function(el){
        var nextEl = $(el).closest('tr').next('tr').find('td.contenteditable').eq($(el).index() - 1);
        if (nextEl . length > 0) {
            psi . setEndOfContenteditable(nextEl[0]);
        }else{
            nextEl = $(el).closest('table').find('tr:eq(1)').find('td.contenteditable').eq($(el).index());
            if (nextEl . length > 0) {
                psi . setEndOfContenteditable(nextEl[0]);
            }else{
                nextEl = $(el).closest('table').find('tr:eq(1)').find('td.contenteditable').eq(0);
                psi . setEndOfContenteditable(nextEl[0]);
            }
        }
    }
}

window.employee = new Employee;
