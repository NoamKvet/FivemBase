
$(document).ready(function(){
    // On 'Esc' call close method
    document.onkeyup = function(data) {
        if (data.which == 27) {
            $.post('http://basic/close', JSON.stringify({}));
        }
    };
    
    // Listens for NUI messages from Lua 
    window.addEventListener( 'message', function( event ) {
        var item = event.data;
        
        // Show the menu 
        if ( item.showPlayerMenu == true ) {
            $(".playerMenuContainer").css("display", "block");
        } else if ( item.showPlayerMenu == false ) {// Hide the menu 
            $(".playerMenuContainer").css("display", "none");
        }
    } );

    $(".btnClose").click(function(){
        $.post('http://basic/close', JSON.stringify({}));
    });

    $(".btnCivilian").click(function(){
        $.post('http://basic/civLoad', JSON.stringify({}));
    });

    $(".btnMedic").click(function(){
        $.post('http://basic/medLoad', JSON.stringify({}));
    });

    $(".btnPolice").click(function(){
        $.post('http://basic/polLoad', JSON.stringify({}));
    });

    $(".btnFirefighter").click(function(){
        $.post('http://basic/fireLoad', JSON.stringify({}));
    });
})


