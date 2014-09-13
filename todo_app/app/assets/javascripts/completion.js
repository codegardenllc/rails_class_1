$(function() {
  completed_table = $('#completed-table')

  $('.complete-link').each(function() {
    $(this).click(function() {
      current_item = $(this).closest('tr')
      type_text = current_item.find('td:nth(0)').text()
      item_name_text = current_item.find('td:nth(1)').text()
      completed_at_text = $.now()

      tr = $('<tr>')

      type = $('<td>').text(type_text);
      item_name = $('<td>').text(item_name_text);
      completed_at = $('<td>').text(completed_at_text);
      
      tr.append(type);
      tr.append(item_name);
      tr.append(completed_at);

      completed_table.append(tr);

      current_item.remove()
    })
  })
})