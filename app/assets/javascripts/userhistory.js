;(function() {
  $(document).on("turbolinks:load", function() {
    let book = "",
      books = "",
      split = [];
    // [Product.name]で[商品名称]を取得
    book = "#{{@product.name}}";
    // [Cookie]から[product_names]に関するデータを取得
    books = Cookies.get("product_names");
    // [undefined]でなければデータが[product_name]に入っている
    if (books != undefined) {
      books = books + "," + book;
      split = books.split(",");
      // 重複を除去
      dup = split.filter(function(a, c, b) {
        return b.indexOf(a) === c;
      });
      Cookies.set("product_names", dup.join(","));
    } else {
      Cookies.set("product_names", book);
    }
  });
}.call(this));