$(function() {
    $('#data_table tbody td:not(.operation-div)').off().on('click', function() {
        document.location = $(this).data('path');
    });
    $('#data_table tbody [name="update_btn"]').off().on('click', function() {
        $('#updateModal').modal('show');
    });
    $('#data_table tbody [name="delete_btn"]').off().on('click', function() {
        $('#deleteModal').modal('show');
    });
});