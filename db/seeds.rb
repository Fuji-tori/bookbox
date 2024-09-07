# 本
paperbook = BookGenre.create(name: "本")
paperbook_1 = paperbook.children.create(name: "書籍")
paperbook_1.children.create([{name: "文学・小説"},{name: "社会・ビジネス"},{name: "旅行・地図"},{name: "趣味"},{name: "実用・教育"},{name: "アート・教養・エンタメ"},{name: "辞典・図鑑・語学・辞書"}])
paperbook_2 = paperbook.children.create(name: "雑誌")
paperbook_2.children.create([{name: "ファッション・美容誌"},{name: "情報誌"},{name: "男性コミック誌"},{name: "女性コミック誌"},{name: "児童・学習誌"},{name: "文芸・教育誌・その他"},{name: "ウィークリーブック"}])
paperbook_3 = paperbook.children.create(name: "漫画")
paperbook_3.children.create([{name: "少年漫画"},{name: "少女漫画"},{name: "青年漫画"},{name: "女性漫画"},{name: "TL漫画"},{name: "BL漫画"},{name: "大人向け漫画"},{name: "オリジナル・同人"}])
paperbook_4 = paperbook.children.create(name: "ライトノベル")
paperbook_4.children.create([{name: "ファンタジー"},{name: "恋愛"},{name: "異世界転生/転移"},{name: "文芸"},{name: "SF"},{name: "その他"}])
paperbook_5 = paperbook.children.create(name: "子どもの本")
paperbook_5.children.create([{name: "絵本"},{name: "図鑑・辞典"},{name: "学習まんが"},{name: "攻略本"},{name: "知育"},{name: "小学館ジュニア文庫"}])

# 電子書籍
ebook = BookGenre.create(name: "電子書籍")
ebook_1 = ebook.children.create(name: "書籍")
ebook_1.children.create([{name: "文学・小説"},{name: "社会・ビジネス"},{name: "旅行・地図"},{name: "趣味"},{name: "実用・教育"},{name: "アート・教養・エンタメ"},{name: "辞典・図鑑・語学・辞書"}])
ebook_2 = ebook.children.create(name: "雑誌")
ebook_2.children.create([{name: "ファッション・美容誌"},{name: "情報誌"},{name: "男性コミック誌"},{name: "女性コミック誌"},{name: "児童・学習誌"},{name: "文芸・教育誌・その他"},{name: "ウィークリーブック"}])
ebook_3 = ebook.children.create(name: "漫画")
ebook_3.children.create([{name: "少年漫画"},{name: "少女漫画"},{name: "青年漫画"},{name: "女性漫画"},{name: "TL漫画"},{name: "BL漫画"},{name: "大人向け漫画"},{name: "オリジナル・同人"}])
ebook_4 = ebook.children.create(name: "ライトノベル")
ebook_4.children.create([{name: "ファンタジー"},{name: "恋愛"},{name: "異世界転生/転移"},{name: "文芸"},{name: "SF"},{name: "その他"}])
ebook_5 = ebook.children.create(name: "子どもの本")
ebook_5.children.create([{name: "絵本"},{name: "図鑑・辞典"},{name: "学習まんが"},{name: "攻略本"},{name: "知育"},{name: "小学館ジュニア文庫"}])

# 本、電子書籍共に[BookGenre下]同文