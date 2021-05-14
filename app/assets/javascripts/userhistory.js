;(function() {
  $(document).on("turbolinks:load", function() {
    let book = "",
      books = "",
      split = [];
    
    // Product.nameで商品名称を取得
    book = "#{{@product.name}}";
    
    // Cookieからproduct_namesに関するデータを取得します。
    books = Cookies.get("product_names");
    
    // undefinedでなければデータがproduct_nameに入っている。
    if (books != undefined) {
      books = books + "," + book;
      split = books.split(",");
      // 重複を除去します。
      dup = split.filter(function(a, c, b) {
        return b.indexOf(a) === c;
      });
      Cookies.set("product_names", dup.join(","));
    } else {
      Cookies.set("product_names", book);
    }
    
  });
}.call(this));