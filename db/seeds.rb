# 書籍
books = BookGenre.create(name: "書籍")
books_1 = .children.create(name: "")
books_1.children.create([{name: ""},{name: ""},{name: ""},{name: ""},{name: ""},{name: ""},{name: ""},{name: ""},{name: ""},{name: ""},{name: ""},{name: ""},{name: ""},{name: ""},{name: ""},{name: ""},{name: ""},{name: ""}])

# 雑誌
magazine = BookGenre.create(name: "雑誌")
magazine_1 = .children.create(name: "")

# コミック
comic = BookGenre.create(name: "コミック")
comic_1 = .children.create(name: "")

# ラノベ
lightnovel = BookGenre.create(name: "ライトノベル")
lightnovel_1 = .children.create(name: "")

# 子供の本
childbook = BookGenre.create(name: "こどもの本")
childbook_1 = .children.create(name: "")

# 電子書籍・コンテンツ
ebook = BookGenre.create(name: "電子書籍・コンテンツ")
ebook_1 = .children.create(name: "")
