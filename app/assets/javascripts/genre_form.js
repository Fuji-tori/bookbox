$(function(){
  let postId = null;
  //カテゴリーセレクトボックスのオプションを作成
  function appendOption(genre){
    var html = `<option value="${genre.id}" data-genre="${genre.id}">${genre.name}</option>`;
    return html;
  }
  //[子]カテゴリーの表示作成
  function appendChidrenBox(insertHTML){
    var childSelectHtml = '';
    childSelectHtml = `<div class='listing-select-wrapper__added' id= 'children_wrapper'>
                        <div class='listing-select-wrapper__box'>
                          <select class="listing-select-wrapper__box--select" id="child_genre" name="">
                            <option value>---</option>
                            ${insertHTML}
                          <select>
                        </div>
                      </div>`;
    $('.listing-book-detail__genre').append(childSelectHtml);
  }
  //[孫]カテゴリーの表示作成
  function appendGrandchidrenBox(insertHTML){
    var grandchildSelectHtml = '';
    grandchildSelectHtml = `<div class='listing-select-wrapper__added' id= 'grandchildren_wrapper'>
                              <div class='listing-select-wrapper__box'>
                                <select class="listing-select-wrapper__box--select" id="grandchild_ganre" name="book[book_genre_id]">
                                  <option value>---</option>
                                  ${insertHTML}
                                </select>
                              </div>
                            </div>`;
    $('.listing-book-detail__genre').append(grandchildSelectHtml);
  }
  //[親]カテゴリー選択後のイベント
  $('#parent_genre').on('change', function(){
    var parentGenre = document.getElementById('parent_genre').value; //選択された[親]カテゴリーの[名前]を取得
    if (parentGenre != "選択してください"){ //[親]カテゴリーが初期値でないことを確認
      $.ajax({
        url: '/books/get_genre_children',
        type: 'GET',
        data: { parent_name: parentGenre },
        dataType: 'json'
      })
      .done(function(children){
        $('#children_wrapper').remove(); //[親]が変更された時[子]以下を削除
        $('#grandchildren_wrapper').remove();
        var insertHTML = '';
        children.forEach(function(child){
          insertHTML += appendOption(child);
        });
        appendChidrenBox(insertHTML);
      })
      .fail(function(){
        alert('カテゴリー取得に失敗しました');
      })
    }else{
      $('#children_wrapper').remove(); //[親]カテゴリーが初期値になった時[子]以下を削除
      $('#grandchildren_wrapper').remove();
    }
  });
  //[子]カテゴリー選択後のイベント
  $('.listing-book-detail__genre').on('change', '#child_genre', function(){
    var childId = document.getElementById('child_genre').value; //選択された[子]カテゴリーの[id]を取得
    if (childId != "---"){ //[子]カテゴリーが初期値でないことを確認
      $.ajax({
        url: '/books/get_genre_grandchildren',
        type: 'GET',
        data: { child_id: childId },
        dataType: 'json'
      })
      .done(function(grandchildren){
        if (grandchildren.length != 0) {
          $('#grandchildren_wrapper').remove(); //[子]が変更された時[孫]以下を削除
          var insertHTML = '';
          grandchildren.forEach(function(grandchild){
            insertHTML += appendOption(grandchild);
          });
          appendGrandchidrenBox(insertHTML);
        }
      })
      .fail(function(){
        alert('カテゴリー取得に失敗しました');
      })
    }else{
      $('#grandchildren_wrapper').remove(); //[子]カテゴリーが初期値になった時[孫]以下を削除
    }
  });
});