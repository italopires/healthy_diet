$('#meals').on('cocoon:after-insert', function(e, insertedItem, originalEvent) {
  $('.datepicker').datepicker({
    language: 'pt-BR',
    autoclose: true,
    orientation: "bottom auto",
    endDate: new Date('3000-01-01')
  });
  var im = new Inputmask("99:99:99");
  im.mask(".datetime-mask");

  Inputmask("date", { "placeholder": "dd/mm/aaaa",
    clearIncomplete: true, yearrange: { maxyear: 3000 } }).mask('.datepicker');
});