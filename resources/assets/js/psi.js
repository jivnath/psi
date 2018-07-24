
function PSI(){
    
    this.setEventListener = function(el, listener){
        el.addEventListener("blur", listener);
        el.addEventListener("keypress", listener);
        el.addEventListener("keyup", listener);
        el.addEventListener("paste", listener);
        el.addEventListener("copy", listener);
        el.addEventListener("cut", listener);
        el.addEventListener("delete", listener);
        el.addEventListener("mouseup", listener);
        el.addEventListener("focus", listener);
    };


    this.setEndOfContenteditable = function(el)
    {
        var range,selection;
        if(document.createRange)//Firefox, Chrome, Opera, Safari, IE 9+
        {
            range = document.createRange();//Create a range (a range is a like the selection but invisible)
            range.selectNodeContents(el);//Select the entire contents of the element with the range
            range.collapse(false);//collapse the range to the end point. false means collapse to end rather than the start
            selection = window.getSelection();//get the selection object (allows you to change selection)
            selection.removeAllRanges();//remove any selections already made
            selection.addRange(range);//make the range you have just created the visible selection
        }
        else if(document.selection)//IE 8 and lower
        { 
            range = document.body.createTextRange();//Create a range (a range is a like the selection but invisible)
            range.moveToElementText(el);//Select the entire contents of the element with the range
            range.collapse(false);//collapse the range to the end point. false means collapse to end rather than the start
            range.select();//Select the range (make it the visible selection
        }
    }
}

window.psi = new PSI;
