# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create(r_name:"鶴亀製麺", address:"大阪府南河内郡河南町持尾386-10", genre:"うどん")
Restaurant.create(r_name:"ハッピーバーガー", address:"大阪府高槻市明野町703-19", genre:"ハンバーガー")
Restaurant.create(r_name:"僕らのピラメキ", address:"大阪府大阪市城東区諏訪2-256-13", genre:"ラーメン")
Restaurant.create(r_name:"甘味本舗", address:"大阪府高槻市城内町773-6", genre:"スイーツ")
Restaurant.create(r_name:"餃子の桂馬", address:"大阪府大阪市東淀川区瑞光2-397-14", genre:"中華料理")
Restaurant.create(r_name:"なや寿司", address:"大阪府八尾市沼1-361-15", genre:"寿司")
Restaurant.create(r_name:"心さい橋", address:"大阪府東大阪市稲葉4-436-1", genre:"お好み焼き")
Restaurant.create(r_name:"アルベロベッロ", address:"大阪府枚方市西招提町897-1", genre:"イタリアン")
Restaurant.create(r_name:"ガーガーバード", address:"大阪府堺市西区浜寺諏訪森町西4-249-16", genre:"焼き鳥")
Restaurant.create(r_name:"Soco壱", address:"大阪府大阪市港区築港2-438-8", genre:"カレーライス")
Restaurant.create(r_name:"Cafeteria November", address:"大阪府東大阪市小若江3-4-1", genre:"学食")

Menu.create(m_name:"ざるうどん", price:350, allergy:"小麦", restaurant_id:1)
Menu.create(m_name:"えびの天ぷら", price:100, allergy:"小麦,えび", restaurant_id:1)

Menu.create(m_name:"チーズバーガー", price:150, allergy:"小麦,乳", restaurant_id:2)
Menu.create(m_name:"ナゲット", price:250, allergy:"小麦", restaurant_id:2)
Menu.create(m_name:"シェイク", price:100, allergy:"乳", restaurant_id:2)

Menu.create(m_name:"豚骨ラーメン", price:700, allergy:"小麦,卵", restaurant_id:3)
Menu.create(m_name:"餃子", price:300, allergy:"小麦,乳", restaurant_id:3)
Menu.create(m_name:"唐揚げ", price:300, allergy:"小麦,乳,卵", restaurant_id:3)

Menu.create(m_name:"パンケーキ", price:450, allergy:"小麦,乳,卵", restaurant_id:4)
Menu.create(m_name:"ぜんざい", price:280, allergy:"小麦", restaurant_id:4)

Menu.create(m_name:"麻婆豆腐", price:450, allergy:"小麦,乳", restaurant_id:5)
Menu.create(m_name:"棒々鶏", price:450, allergy:"小麦,卵", restaurant_id:5)

Menu.create(m_name:"たまご", price:100, allergy:"卵", restaurant_id:6)
Menu.create(m_name:"たこの唐揚げ", price:300, allergy:"小麦,乳,卵", restaurant_id:6)
Menu.create(m_name:"しょうゆ", price:0, allergy:"小麦", restaurant_id:6)

Menu.create(m_name:"豚玉", price:600, allergy:"小麦,乳,卵", restaurant_id:7)
Menu.create(m_name:"もんじゃ焼き", price:450, allergy:"小麦", restaurant_id:7)
Menu.create(m_name:"豚トロ", price:500, allergy:"卵", restaurant_id:7)

Menu.create(m_name:"かにクリームパスタ", price:950, allergy:"小麦,乳,かに", restaurant_id:8)
Menu.create(m_name:"マルゲリータ", price:600, allergy:"小麦,乳", restaurant_id:8)
Menu.create(m_name:"ティラミス", price:300, allergy:"小麦,乳,卵", restaurant_id:8)

Menu.create(m_name:"むね肉(たれ)", price:110, allergy:"小麦", restaurant_id:9)
Menu.create(m_name:"チキン南蛮", price:300, allergy:"小麦,乳,卵", restaurant_id:9)
Menu.create(m_name:"キャベツ", price:250, allergy:"小麦", restaurant_id:9)

Menu.create(m_name:"カレーライス", price:450, allergy:"小麦", restaurant_id:10)
Menu.create(m_name:"マンゴーラッシー", price:250, allergy:"乳", restaurant_id:10)
Menu.create(m_name:"ナン", price:500, allergy:"小麦", restaurant_id:10)

Menu.create(m_name:"ピリ辛サーモン丼", price:432, allergy:"小麦,乳,卵", restaurant_id:11) # 大豆，鶏肉，豚肉，さけ，さば，ゴマ
Menu.create(m_name:"カレーライス", price:280, allergy:"小麦", restaurant_id:11) # 大豆，鶏肉，豚肉，りんご，ゴマ
Menu.create(m_name:"ホワイトカレー", price:378, allergy:"小麦,乳,卵", restaurant_id:11) # 大豆，鶏肉，オレンジ
Menu.create(m_name:"カンカカレー", price:432, allergy:"小麦", restaurant_id:11) # 牛肉，鶏肉，大豆，りんご，ゼラチン
Menu.create(m_name:"塩ラーメン", price:345, allergy:"小麦,乳,卵", restaurant_id:11) # 大豆，鶏肉，豚肉，りんご，ゼラチン，ゴマ
Menu.create(m_name:"味噌ラーメン", price:345, allergy:"小麦,乳,卵", restaurant_id:11) # 大豆，鶏肉，豚肉，りんご
Menu.create(m_name:"かけうどん", price:172, allergy:"小麦", restaurant_id:11) # 大豆，さば，ゴマ
Menu.create(m_name:"かけそば", price:172, allergy:"小麦,卵,そば", restaurant_id:11) # 大豆，さば，ゴマ
Menu.create(m_name:"かき揚げうどん", price:259, allergy:"小麦", restaurant_id:11) # 大豆，さば，ゴマ
Menu.create(m_name:"かき揚げそば", price:259, allergy:"小麦,卵,そば", restaurant_id:11) # 大豆，さば，ゴマ
Menu.create(m_name:"きつねうどん", price:216, allergy:"小麦", restaurant_id:11) # 大豆，さば，ゴマ
Menu.create(m_name:"きつねそば", price:216, allergy:"小麦,卵,そば", restaurant_id:11) # 大豆，さば，ゴマ
Menu.create(m_name:"ライス", price:113, allergy:"", restaurant_id:11)
Menu.create(m_name:"味噌汁", price:32, allergy:"", restaurant_id:11) # 大豆
Menu.create(m_name:"ポテト野菜サラダ", price:108, allergy:"卵", restaurant_id:11) # 大豆
Menu.create(m_name:"近大唐揚げ", price:302, allergy:"小麦,乳", restaurant_id:11) # 大豆，鶏肉
Menu.create(m_name:"ダッカルビ風野菜炒め", price:259, allergy:"小麦", restaurant_id:11) # 大豆，鶏肉，りんご，ゴマ
Menu.create(m_name:"ハンバーグコンボ", price:432, allergy:"小麦,乳,卵,えび", restaurant_id:11) # 牛肉，鶏肉，豚肉，大豆，ゴマ
Menu.create(m_name:"ローストンカツごまソース", price:259, allergy:"小麦,乳,卵", restaurant_id:11) # 大豆，豚肉，りんご，ゴマ
Menu.create(m_name:"白身魚フライ", price:259, allergy:"小麦,卵", restaurant_id:11) # 大豆
Menu.create(m_name:"野菜食べチャイナスープ", price:108, allergy:"小麦", restaurant_id:11) # 大豆，鶏肉，さば，ゼラチン，ゴマ
Menu.create(m_name:"大根牛すじ煮", price:172, allergy:"小麦", restaurant_id:11) # 大豆，牛肉，さば
Menu.create(m_name:"カレーパン", price:150, allergy:"乳,卵", restaurant_id:11) # 大豆，牛肉，豚肉
Menu.create(m_name:"あんドーナツ", price:150, allergy:"乳,卵", restaurant_id:11) # 大豆
Menu.create(m_name:"北海道いももち", price:86, allergy:"小麦,乳", restaurant_id:11) # 大豆
Menu.create(m_name:"フルーツヨーグルト", price:108, allergy:"乳", restaurant_id:11) # もも
