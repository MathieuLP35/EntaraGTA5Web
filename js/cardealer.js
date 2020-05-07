(function(){

    $('.editPrice').hide();
    $('.ok').hide();

    $('.edit').click(function(){
        $('.editPrice').show();
        $('.ok').show();
        $('.edit').hide();
    });

    $('.ok').click(function(){
        var prix = $(this).parent().find('.editPrice').val();
        $(this).parent().find(".prix").html(prix);
        var veh_id = $(this).data("id");

        $.post('includes/editPrix_exec.php', {prix:prix, veh_id:veh_id}, function(donnees){
            $('#return').html(donnees);
            $('.editPrice').hide();
            $('.ok').hide();
            $('.editPrice').val('');
            $('.edit').show();
        });
        return false
    });

}(jQuery));
