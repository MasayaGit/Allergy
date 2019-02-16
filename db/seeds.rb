Restaurant.create(r_name: "OMISE 1", address:"近大から15mくらいのとこ", genre:"ラーメン")
Restaurant.create(r_name: "OMISE 2", address:"近大から30mくらいのとこ", genre:"どんぶり")

Menu.create(m_name: "MENU1", price:150, allergy:"卵",restaurant_id:1)
Menu.create(m_name: "MENU2", price:300, allergy:"卵・小麦",restaurant_id:1)
