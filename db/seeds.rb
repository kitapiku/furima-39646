#親カテゴリー
men, women, baby, interior, books_music_games, toys_hoby_goods, cosmetics_beauty, kaden_sumaho, sport_leisure, handmade, tickets, car_motorcycle, sonota = Category.create([{name: "メンズ"}, {name: "レディース"}, {name: "ベビー・キッズ"}, {name: "インテリア・住まい・小物"}, {name: "本・音楽・ゲーム"}, {name: "おもちゃ・ホビー・グッズ"}, {name: "コスメ・香水・美容"}, {name: "家電・スマホ・カメラ"}, {name: "スポーツ・レジャー"}, {name: "ハンドメイド"}, {name: "チケット"}, {name: "自動車・オートバイ"}, {name: "その他"}])
# メンズ子カテゴリ
tops, jacket_outer, pants, shoes, bag, formal, hat, accessory, komono, watch, swimsuit, legwear, underwear, others_men = men.children.create([{name: "トップス"}, {name: "ジャケット/アウター"}, {name: "パンツ"}, {name: "靴"}, {name: "バッグ"}, {name: "スーツ"}, {name: "帽子"}, {name: "アクセサリー"}, {name: "小物"}, {name: "時計"}, {name: "水着"}, {name: "レッグウェア"}, {name: "アンダーウェア"}, {name: "その他"}])
#メンズ孫カテゴリ
["Tシャツ/カットソー", "シャツ", "ポロシャツ", "タンクトップ", "ニット/セーター", "パーカー", "カーディガン", "スウェット", "ジャージ", "ベスト", "その他"].each do |name|
  tops.children.create(name: name)
end
["テーラードジャケット", "ノーカラージャケット", "Gジャン/デニムジャケット", "レザージャケット", "ダウンジャケット", "ライダースジャケット", "ミリタリージャケット", "ダッフルコート", "トレンチコート", "スカジャン", "ブルゾン", "マウンテンパーカー", "ダウンベスト", "ポンチョ", "その他"].each do |name|
  jacket_outer.children.create(name: name)
end
["デニム/ジーンズ", "カーゴパンツ", "スラックス", "チノパン", "ショートパンツ", "サルエルパンツ", "オーバーオール", "その他"].each do |name|
  pants.children.create(name: name)
end
["スニーカー", "サンダル", "ブーツ", "ドレス/ビジネス", "長靴/レインシューズ", "その他"].each do |name|
  shoes.children.create(name: name)
end
["ショルダーバッグ", "トートバッグ", "ボストンバッグ", "リュック/バックパック", "ウエストポーチ", "ボディーバッグ", "ビジネスバッグ", "エコバッグ", "その他"].each do |name|
  bag.children.create(name: name)
end
["スーツジャケット", "スーツベスト", "スラックス", "セットアップ", "その他"].each do |name|
  formal.children.create(name: name)
end
["キャップ", "ハット", "ニットキャップ", "ハンチング/ベレー帽", "サンバイザー", "その他"].each do |name|
  hat.children.create(name: name)
end
["ネックレス", "ブレスレット","リストバンド", "リング", "ピアス", "アンクレット", "その他"].each do |name|
  accessory.children.create(name: name)
end
["長財布", "折り財布", "マネークリップ","コインケース", "名刺入れ/定期入れ", "キーケース", "キーホルダー", "ネクタイ", "手袋", "ハンカチ", "ベルト", "マフラー", "ストール", "バンダナ", "ネックウォーマー", "サスペンダー", "ウォレットチェーン", "サングラス/メガネ", "モバイルケース", "手帳", "ストラップ", "ネクタイピン", "カフリンクス", "イヤマフラー", "傘", "レインコート", "ミラー", "タバコグッズ", "その他"].each do |name|
  komono.children.create(name: name)
end
["腕時計", "ラバーベルト", "レザーベルト", "金属ベルト", "その他"].each do|name|
  watch.children.create(name: name)
end
["一般水着", "スポーツ用", "アクセサリー", "その他"].each do |name|
  swimsuit.children.create(name: name)
end
["ソックス", "レギンス/スパッツ", "レッグウォーマー", "その他"].each do |name|
  legwear.children.create(name: name)
end
["トランクス", "ボクサーパンツ", "その他"].each do |name|
  underwear.children.create(name: name)
end
others_men.children.create(name: "その他")
#レディース子カテゴリ
tops, jacket_outer, pants, skirt, dress, shoes, roomwear, legwear, hat, bag, accessory, hairaccessory, komono, watch, wig_exstension, yukata, formal, maternity, others_women = women.children.create([{name: "トップス"}, {name: "ジャケット/アウター"}, {name: "パンツ"}, {name: "スカート"}, {name: "ワンピース"}, {name: "靴"}, {name: "ルームウェア/パジャマ"}, {name: "レッグウェア"}, {name: "帽子"}, {name: "バッグ"}, {name: "アクセサリー"}, {name: "ヘアアクセサリー"}, {name: "小物"}, {name: "時計"}, {name: "ウィッグ/エクステ"}, {name: "浴衣/水着"}, {name: "スーツ/フォーマル/ドレス"}, {name: "マタニティ"}, {name: "その他"}])
#レディース孫カテゴリ
["Tシャツ/カットソー", "シャツ/ブラウス", "ポロシャツ", "キャミソール", "タンクトップ", "ニット/セーター", "カーディガン", "アンサンブル", "ベスト", "パーカー", "トレーナー/スウェット", "チューブトップ", "その他"].each do |name|
  tops.children.create(name: name)
end
["テーラードジャケット", "ノーカラージャケット", "Gジャン/デニムジャケット", "レザージャケット", "ダウンジャケット", "ライダースジャケット", "ミリタリージャケット", "ダウンベスト", "ジャンパー/ブルゾン", "ポンチョ", "ロングコート", "トレンチコート", "ダッフルコート", "スタジャン", "ファーコート", "その他"].each do |name|
  jacket_outer.children.create(name: name)
end
["デニム/ジーンズ", "ショートパンツ", "ハーフパンツ", "チノパン", "カーゴパンツ", "サロペット/オーバーオール", "オールインワン", "サルエルパンツ", "ガウチョパンツ", "その他"].each do |name|
  pants.children.create(name: name)
end
["ミニスカート", "ひざ丈スカート", "ロングスカート", "キュロット", "その他"].each do |name|
  skirt.children.create(name: name)
end
["ミニワンピース", "ひざ丈ワンピース", "ロングワンピース", "その他"].each do |name|
  dress.children.create(name: name)
end
[ "ハイヒール/パンプス", "ブーツ", "サンダル", "スニーカー", "ミュール", "ローファー/革靴", "フラットシューズ/バレエシューズ", "長靴/レインシューズ", "その他"].each do |name|
  shoes.children.create(name: name)
end
["パジャマ", "ルームウェア"].each do |name|
  roomwear.children.create(name: name)
end
["ソックス", "スパッツ/レギンス", "ストッキング/タイツ", "レッグウォーマー", "その他"].each do |name|
  legwear.children.create(name: name)
end
["ニットキャップ", "ハット", "ハッチング/ベレー帽", "キャップ", "麦わら帽子", "その他"].each do |name|
  hat.children.create(name: name)
end
["ハンドバッグ", "トートバッグ", "エコバッグ", "リュック/バックパック", "ボストンバック", "スポーツバッグ", "ショルダーバッグ", "ポーチ", "ボディバッグ/ウェストバッグ", "ビジネスバッグ", "キャリーバッグ", "その他"].each do |name|
  bag.children.create(name: name)
end
["ネックレス", "ブレスレット", "リストバンド", "リング", "ピアス", "イヤリング", "アンクレット", "ブローチ", "その他"].each do |name|
  accessory.children.create(name: name)
end
["ヘアゴム/シュシュ", "ヘアバンド/カチューシャ", "ヘアピン", "その他"].each do |name|
  hairaccessory.children.create(name: name)
end
["長財布", "折り財布", "コインケース", "名刺入れ", "キーケース", "キーホルダー", "手袋/アームカバー", "ハンカチ", "ベルト", "マフラー", "ストール", "バンダナ/スカーフ", "ネックウォーマー", "サスペンダー", "サングラス/メガネ", "モバイルケース", "手帳", "イヤマフラー", "傘", "レインコート/ポンチョ", "ミラー", "その他"].each do |name|
  komono.children.create(name: name)
end
["腕時計", "ラバーベルト", "レザーベルト", "金属ベルト", "その他"].each do |name|
  watch.children.create(name: name)
end
["前髪ウィッグ", "ロングストレート", "ロングカール", "ショートストレート", "ショートカール", "その他"].each do |name|
  wig_exstension.children.create(name: name)
end
["浴衣", "着物", "振袖", "セパレート水着", "スポーツ水着", "その他"].each do |name|
  yukata.children.create(name: name)
end
["スカートスーツ上下", "パンツスーツ上下", "ドレス", "パーティーバッグ", "シューズ", "ウェディング", "その他"].each do |name|
  formal.children.create(name: name)
end
["トップス", "アウター", "インナー", "ワンピース", "パンツ/スパッツ", "スカート", "パジャマ", "授乳服", "その他"].each do |name|
  maternity.children.create(name: name)
end
["コスプレ", "下着", "その他"].each do |name|
  others_women.children.create(name: name)
end
# ベビー・キッズ子カテゴリ
bmen, bwomen, bwm, kidsw, kidsm, kidswm, shoes, komono, omutu, gaishutu, junyuu, furniture, toys, events, others_baby = baby.children.create([{name: "ベビー服(女の子用)~95cm"}, {name: "ベビー服(男の子用)~95cm"}, {name: "ベビー服(男女兼用)~95cm"}, {name: "キッズ服(女の子用)100cm~"}, {name: "キッズ服(男の子用)100cm~"}, {name: "キッズ服(男女兼用)100cm~"}, {name: "キッズ靴"}, {name: "子供用ファッション小物"}, {name: "おむつ/トイレ/バス"}, {name: "外出/移動用品"}, {name: "授乳/食事"}, {name: "ベビー家具/寝具/室内用品"}, {name: "おもちゃ"}, {name: "行事/記念品"}, {name: "その他"}])
#ベビー・キッズ孫カテゴリ
["トップス", "アウター", "パンツ", "スカート", "ワンピース", "ベビードレス", "おくるみ", "下着/肌着", "パジャマ", "その他"].each do |name|
  bwomen.children.create(name: name)
end
["トップス", "アウター", "パンツ", "おくるみ", "下着/肌着", "パジャマ", "その他"].each do |name|
  bmen.children.create(name: name)
end
["トップス", "アウター", "パンツ", "おくるみ", "下着/肌着", "パジャマ", "その他"].each do |name|
  bwm.children.create(name: name)
end
["コート", "ジャケット", "Tシャツ/カットソー", "トレーナー", "タンクトップ", "スカート", "パンツ", "ワンピース", "セットアップ", "パジャマ", "フォーマル/ドレス", "和服", "浴衣", "甚平", "水着", "その他"].each do |name|
  kidsw.children.create(name: name)
end
["コート", "ジャケット", "Tシャツ/カットソー", "トレーナー", "パンツ", "セットアップ", "パジャマ", "フォーマル/ドレス", "和服", "浴衣", "甚平", "水着", "その他"].each do |name|
  kidsm.children.create(name: name)
end
["コート", "ジャケット", "Tシャツ/カットソー", "トレーナー", "ボトムス", "パジャマ", "その他"].each do |name|
  kidswm.children.create(name: name)
end
["スニーカー", "サンダル", "ブーツ", "長靴", "その他"].each do |name|
  shoes.children.create(name: name)
end
["靴下", "帽子", "エプロン", "サスペンダー", "タイツ", "ハンカチ", "バンダナ", "ベルト", "マフラー", "手袋", "その他"].each do |name|
  komono.children.create(name: name)
end
["おむつ用品", "おまる", "トレーニングパンツ", "ベビーバス", "お風呂用品", "その他"].each do |name|
  omutu.children.create(name: name)
end
["ベビーカー", "抱っこひも/スリング", "チャイルドシート", "その他"].each do |name|
  gaishutu.children.create(name: name)
end
["ミルク", "ベビーフード", "ベビー用食器", "その他"].each do |name|
  junyuu.children.create(name: name)
end
["ベッド", "布団/毛布", "イス", "たんす", "その他"].each do |name|
  furniture.children.create(name: name)
end
["おふろのおもちゃ", "がらがら", "オルゴール", "ベビージム", "手押し車", "知育玩具", "その他"].each do |name|
  toys.children.create(name: name)
end
["お宮参り", "お食い初め", "アルバム", "手形/足形", "その他"].each do |name|
  events.children.create(name: name)
end
["母子手帳", "その他"].each do |name|
  others_baby.children.create(name: name)
end
# インテリア・住まい・小物子カテゴリ
kitchen, bed, sofa, chairs, table, storage, rag, curtain, lighting, interiors, others_interior = interior.children.create([{name: "キッチン/食器"}, {name: "ベッド/寝具"}, {name: "ソファ"}, {name: "椅子/チェア"}, {name: "机/テーブル"}, {name: "収納家具"}, {name: "ラグ/カーペット/マット"}, {name: "カーテン/ブラインド"}, {name: "ライト/照明"}, {name: "インテリア小物"}, {name: "その他"}])
#インテリア孫カテゴリ
["食器", "調理器具", "収納/キッチン雑貨", "弁当", "カトラリー", "テーブル用品", "容器", "エプロン", "浄水機", "その他"].each do |name|
  kitchen.children.create(name: name)
end
["セミシングル", "シングル", "セミダブル", "ダブル", "ワイドダブル", "クイーン", "キング", "マットレス", "すのこ", "収納付き", "毛布", "枕", "その他"].each do |name|
  bed.children.create(name: name)
end
["ソファセット", "シングルソファ", "トリプルソファ", "コーナーソファ", "ビーズソファ", "フロアソファ", "ソファベッド", "応接セット", "ソファカバー", "リクライニングソファ", "その他"].each do |name|
  sofa.children.create(name: name)
end
["ダイニングチェア", "ロッキングチェア", "座椅子", "折り畳みイス", "デスクチェア", "ゲーミングチェア", "その他"].each do |name|
  chairs.children.create(name: name)
end
["こたつ", "カウンターテーブル", "サイドテーブル", "センターテーブル", "ダイニングテーブル", "座卓/ちゃぶ台", "アウトドア", "パソコンデスク", "事務机/学習机", "その他"].each do |name|
  table.children.create(name: name)
end
["リビング", "キッチン", "玄関/屋外", "バス/トイレ", "本棚", "洋服タンス", "電話台/ファックス台", "ドレッサー/鏡台", "棚/ラック", "ケース/ボックス", "その他"].each do |name|
  storage.children.create(name: name)
end
["ラグ", "カーペット", "ホットカーペット", "玄関/キッチンマット", "トイレ/バスマット", "その他"].each do |name|
  rag.children.create(name: name)
end
["カーテン", "ブラインド", "ロールスクリーン", "のれん", "その他"].each do |name|
  curtain.children.create(name: name)
end
["蛍光灯/電球", "天井照明", "フロアスタンド", "その他"].each do |name|
  lighting.children.create(name: name)
end
["ごみ箱", "ウェルカムボード", "オルゴール", "クッション", "クッションカバー", "スリッパラック", "ティッシュボックス", "バスケット/かご", "フォトフレーム", "マガジンラック", "花瓶", "灰皿", "傘立て", "小物入れ", "置時計", "掛時計/柱時計", "鏡", "置物", "風鈴", "植物/観葉植物", "その他"].each do |name|
  interiors.children.create(name: name)
end
others_interior.children.create(name: "その他")
# 本・音楽・ゲーム子カテゴリ
books, comics, magazines, cd, dvd, record, games, others_books_music_games = books_music_games.children.create([{name: "本"}, {name: "漫画"}, {name: "雑誌"}, {name: "CD"}, {name: "DVD/ブルーレイ"}, {name: "レコード"}, {name: "テレビゲーム"}, {name: "その他"}])
#本・音楽・ゲーム孫カテゴリ
["小説", "人文/社会", "ノンフィクション", "地図/旅行ガイド", "ビジネス/経済", "健康/医学", "コンピュータ/IT", "趣味/スポーツ", "住まい/暮らし", "アート/エンタメ", "洋書", "絵本", "参考書", "その他"].each do |name|
  books.children.create(name: name)
end
["全巻セット", "少年漫画", "少女漫画", "青年漫画", "女性漫画", "同人誌", "その他"].each do |name|
  comics.children.create(name: name)
end
["アート/エンタメ/ホビー", "ファッション", "ニュース/総合", "趣味/スポーツ", "その他"].each do |name|
  magazines.children.create(name: name)
end
["邦楽", "洋楽", "アニメ", "クラシック", "K-POP/アジア", "キッズ/ファミリー", "その他"].each do |name|
  cd.children.create(name: name)
end
["外国映画", "日本映画", "アニメ", "TVドラマ", "ミュージック", "お笑い/バラエティ", "スポーツ/フィットネス", "キッズ/ファミリー", "その他"].each do |name|
  dvd.children.create(name: name)
end
["邦楽", "洋楽", "その他"].each do |name|
  record.children.create(name: name)
end
["家庭用ゲーム本体", "家庭用ゲームソフト", "携帯用ゲーム本体", "携帯用ゲームソフト", "PCゲーム", "その他"].each do |name|
  games.children.create(name: name)
end
others_books_music_games.children.create(name: "その他")
# おもちゃ・ホビー・グッズ子カテゴリ
toys, comics, cards, figurines, musical_instrument, military, art, others_toys_hoby_goods = toys_hoby_goods.children.create([{name: "おもちゃ"}, {name: "コミック/アニメグッズ"}, {name: "トレーディングカード"}, {name: "フィギュア"}, {name: "楽器/器材"}, {name: "ミリタリー"}, {name: "美術品"}, {name: "その他"}])
#おもちゃ・ホビー・グッズ孫カテゴリ
["キャラクターグッズ", "ぬいぐるみ", "模型/プラモデル", "ミニカー", "ラジコン", "その他"].each do |name|
  toys.children.create(name: name)
end
["ストラップ", "キーホルダー", "バッジ", "カード", "クリアファイル", "ポスター", "タオル", "その他"].each do |name|
  comics.children.create(name: name)
end
["遊戯王", "マジック：ザ・ギャザリング", "ポケモンカードゲーム", "デュエルマスターズ", "バトルスピリッツ", "アイカツ", "カードファイト!! ヴァンガード", "ヴァイスシュヴァルツ", "プロ野球オーナーズリーグ", "ベースボールヒーローズ", "ドラゴンボール", "スリーブ", "その他"].each do |name|
  cards.children.create(name: name)
end
["コミック/アニメ", "特撮", "ゲームキャラクター", "SF/ファンタジー/ホラー", "アメコミ", "スポーツ", "ミリタリー", "その他"].each do |name|
  figurines.children.create(name: name)
end
["エレキギター", "アコースティックギター", "ベース", "エフェクター", "アンプ", "弦楽器", "管楽器", "鍵盤楽器", "打楽器", "和楽器", "楽譜/スコア", "レコーディング/PA機器", "DJ機器", "その他"].each do |name|
  musical_instrument.children.create(name: name)
end
["トイガン", "装備", "その他"].each do |name|
  military.children.create(name: name)
end
["陶芸", "ガラス", "漆芸", "金属工芸", "絵画/タペストリ", "版画", "彫刻/オブジェクト", "書", "写真", "画材", "額縁", "その他"].each do |name|
  art.children.create(name: name)
end
["トランプ/UNO", "カルタ/百人一首", "ダーツ", "ビリヤード", "麻雀", "パズル", "囲碁/将棋", "オセロ/チェス", "人生ゲーム", "アマチュア無線", "その他"].each do |name|
  others_toys_hoby_goods.children.create(name: name)
end
# コスメ・香水子カテゴリ
base, makeup, nail, perfume, skin, haircare, bodycare, oral, diet, others_cosmetics_beauty = cosmetics_beauty.children.create([{name: "ベースメイク"}, {name: "メイクアップ"}, {name: "ネイルケア"}, {name: "香水"}, {name: "スキンケア/基礎化粧品"}, {name: "ヘアケア"}, {name: "ボディケア"}, {name: "オーラルケア"}, {name: "ダイエット"}, {name: "その他"}])
#コスメ・香水孫カテゴリ
["ファンデーション", "化粧下地", "コントロールカラー", "BBクリーム", "CCクリーム", "コンシーラー", "フェイスパウダー", "トライアルセット/サンプル", "その他"].each do |name|
  base.children.create(name: name)
end
["アイシャドウ", "口紅", "リップ/グロス", "リップライナー", "チーク", "フェイスカラー", "マスカラ", "アイライナー", "つけまつげ", "アイブロウペンシル", "パウダーアイブロウ", "眉マスカラ", "トライアルセット/サンプル", "メイク道具/化粧小物", "美顔用品/美顔ローラー", "その他"].each do |name|
  makeup.children.create(name: name)
end
["ネイルカラー", "カラージェル", "トップコート", "ネイルアート", "ネイルパーツ", "ネイルチップ/付け爪", "手入れ用具", "除光液", "その他"].each do |name|
  nail.children.create(name: name)
end
["香水(女性用)", "香水(男性用)", "ユニセックス", "ボディミスト", "その他"].each do |name|
  perfume.children.create(name: name)
end
["化粧水", "乳液", "美容液", "フェイスクリーム", "洗顔料", "クレンジング", "フェイスマスク", "ジェル", "導入液", "アイケア", "リップケア", "トライアルセット/サンプル", "その他"].each do |name|
  skin.children.create(name: name)
end
["シャンプー", "トリートメント", "コンディショナー", "リンス", "スタイリング剤", "カラーリング剤", "ブラシ", "その他"].each do |name|
  haircare.children.create(name: name)
end
["オイル/クリーム", "ハンドクリーム", "ローション", "日焼け止め/サンオイル", "ボディソープ", "入浴剤", "制汗/デオドラント", "フットケア", "その他"].each do |name|
  bodycare.children.create(name: name)
end
["口臭防止/エチケット用品", "歯ブラシ", "その他"].each do |name|
  oral.children.create(name: name)
end
["ダイエット食品", "エクササイズ用品", "体重計", "体脂肪計", "その他"].each do |name|
  diet.children.create(name: name)
end
["健康用品", "看護/介護用品", "救急/衛生用品", "その他"].each do |name|
  others_cosmetics_beauty.children.create(name: name)
end
# 家電・スマホ・カメラ子カテゴリ
sumaho, sumahoac, pc_tab, camera, tv, aodio, beauty, air_conditioner, electronics, others_kaden_sumaho = kaden_sumaho.children.create([{name: "スマートフォン"}, {name: "スマホアクセサリー"}, {name: "PC/タブレット"}, {name: "カメラ"}, {name: "テレビ/映像機器"}, {name: "オーディオ"}, {name: "美容/健康"}, {name: "冷暖房"}, {name: "生活家電"}, {name: "その他"}])
#家電・スマホ・カメラ孫カテゴリ
["スマートフォン本体", "バッテリー/充電器", "その他"].each do |name|
  sumaho.children.create(name: name)
end
["Android用ケース", "iPhone用ケース", "カバー", "ストラップ", "フィルム", "自撮り棒", "その他"].each do |name|
  sumahoac.children.create(name: name)
end
["タブレット", "ノートPC", "デスクトップPC", "ディスプレイ", "電子ブックリーダー", "PC周辺機器", "PCパーツ", "その他"].each do |name|
  pc_tab.children.create(name: name)
end
["デジタルカメラ", "ビデオカメラ", "レンズ", "フィルムカメラ", "防犯カメラ", "その他"].each do |name|
  camera.children.create(name: name)
end
["テレビ", "プロジェクター", "ブルーレイレコーダー", "DVDレコーダー", "ブルーレイプレーヤー", "DVDプレーヤー", "映像用ケーブル", "その他"].each do |name|
  tv.children.create(name: name)
end
["ポータブルプレーヤー", "イヤフォン", "ヘッドフォン", "アンプ", "スピーカー", "ケーブル/シールド", "ラジオ", "その他"].each do |name|
  aodio.children.create(name: name)
end
["ヘアドライヤー", "ヘアアイロン", "美容機器", "マッサージ機", "電気シェーバー", "電動歯ブラシ", "その他"].each do |name|
  beauty.children.create(name: name)
end
["エアコン", "空気清浄器", "加湿器", "扇風機", "除湿機", "ファンヒーター", "電気ヒーター", "オイルヒーター", "ストーブ", "その他"].each do |name|
  air_conditioner.children.create(name: name)
end
["冷蔵庫", "洗濯機", "衣類乾燥機", "炊飯器", "電子レンジ/オーブン", "調理機器", "アイロン", "掃除機", "コーヒーメーカー", "その他"].each do |name|
  electronics.children.create(name: name)
end
others_kaden_sumaho.children.create(name: "その他")
# スポーツ・レジャー子カテゴリ
golf, fishing, bicycle, training, baseball, soccer, tennis, snowboard, ski, outdoor, others_sport_leisure = sport_leisure.children.create([{name: "ゴルフ"}, {name: "フィッシング"}, {name: "自転車"}, {name: "トレーニング/エクササイズ"}, {name: "野球"}, {name: "サッカー/フットサル"}, {name: "テニス"}, {name: "スノーボード"}, {name: "スキー"}, {name: "アウトドア"}, {name: "その他"}])
#スポーツ・レジャー孫カテゴリ
["クラブ", "ウエア", "バッグ", "シューズ", "アクセサリー", "その他"].each do |name|
  golf.children.create(name: name)
end
["ロッド", "リール", "ルアー用品", "ウエア", "釣り糸/ライン", "その他"].each do |name|
  fishing.children.create(name: name)
end
["自転車本体", "ウエア", "パーツ", "アクセサリー", "バッグ", "工具/メンテナンス", "その他"].each do |name|
  bicycle.children.create(name: name)
end
["ランニング", "ウォーキング", "ヨガ", "トレーニング用品", "その他"].each do |name|
  training.children.create(name: name)
end
["ウェア", "シューズ", "グローブ", "バット", "アクセサリー", "防具", "記念グッズ", "応援グッズ", "その他"].each do |name|
  baseball.children.create(name: name)
end
["ウェア", "シューズ", "ボール", "アクセサリー", "記念グッズ", "応援グッズ", "その他"].each do |name|
  soccer.children.create(name: name)
end
["ラケット", "ウェア", "シューズ", "ボール", "アクセサリー", "記念グッズ", "応援グッズ", "その他"].each do |name|
  tennis.children.create(name: name)
end
["ボード", "ブーツ", "ウエア/装備", "アクセサリー", "バッグ", "その他"].each do |name|
  snowboard.children.create(name: name)
end
["板", "ブーツ", "ウエア", "ストック", "その他"].each do |name|
  ski.children.create(name: name)
end
["テント/タープ", "ライト/ランタン", "寝袋/寝具", "テーブル/チェア", "ストーブ/コンロ", "調理器具", "食器", "登山用品", "その他"].each do |name|
  outdoor.children.create(name: name)
end
["旅行用品", "その他"].each do |name|
  others_sport_leisure.children.create(name: name)
end
# ハンドメイド子カテゴリ
accessory, watch, goods, kids, material, others_handmade = handmade.children.create([{name: "アクセサリー"}, {name: "時計"}, {name: "日用品/インテリア"}, {name: "キッズ/ベビー"}, {name: "素材/材料"}, {name: "その他"}])
#ハンドメイド孫カテゴリ
["ピアス", "イヤリング", "ネックレス", "ブレスレット", "リング", "チャーム", "ヘアゴム", "その他"].each do |name|
  accessory.children.create(name: name)
end
["時計","その他"].each do |name|
  watch.children.create(name: name)
end
["キッチン用品", "文房具", "アート/写真", "アロマ/キャンドル", "フラワー/ガーデン", "その他"].each do |name|
  goods.children.create(name: name)
end
["ファッション雑貨", "スタイ/よだれかけ", "外出用品", "ネームタグ", "その他"].each do |name|
  kids.children.create(name: name)
end
others_handmade.children.create(name: "その他")
# チケット子カテゴリ
music, sports, engeki, event, movie, facility, discount, others_tickets = tickets.children.create([{name: "音楽"}, {name: "スポーツ"}, {name: "演劇/芸能"}, {name: "イベント"}, {name: "映画"}, {name: "施設利用券"}, {name: "優待券/割引券"}, {name: "その他"}])
#チケット孫カテゴリ
["男性アイドル", "女性アイドル", "韓流", "国内アーティスト", "海外アーティスト", "音楽フェス", "声優/アニメ", "その他"].each do |name|
  music.children.create(name: name)
end
["サッカー", "野球", "テニス", "格闘技/プロレス", "相撲", "ゴルフ", "バレーボール", "バスケットボール", "モータースポーツ", "ウィンタースポーツ", "その他"].each do |name|
  sports.children.create(name: name)
end
["ミュージカル", "演劇", "伝統芸能", "落語", "お笑い", "オペラ", "サーカス", "バレエ", "その他"].each do |name|
  engeki.children.create(name: name)
end
["声優/アニメ", "キッズ/ファミリー", "トークショー/講演会", "その他"].each do |name|
  event.children.create(name: name )
end
["邦画", "洋画", "その他"].each do |name|
  movie.children.create(name: name)
end
["遊園地/テーマパーク", "美術館/博物館", "スキー場", "ゴルフ場", "フィットネスクラブ", "プール", "ボウリング場", "水族館", "動物園", "その他"].each do |name|
  facility.children.create(name: name)
end
["ショッピング", "レストラン/食事券", "フード/ドリンク券", "宿泊券", "その他"].each do |name|
  discount.children.create(name: name)
end
others_tickets.children.create(name: "その他")
# 自動車・オートバイ子カテゴリ
car, tires, parts, car_accessory, motorcycle, moto_parts, moto_accessory, others_car_motocycle = car_motorcycle.children.create([{name: "自動車本体"}, {name: "タイヤ/ホイール"}, {name: "自動車パーツ"}, {name: "カーアクセサリー"}, {name: "オートバイ車体"}, {name: "オートバイパーツ"}, {name: "オートバイアクセサリー"}, {name: "その他"}])
#自動車・オートバイ孫カテゴリ
["国産自動車", "外国産自動車"].each do |name|
  car.children.create(name: name)
end
["タイヤ/ホイールセット", "タイヤ", "ホイール", "その他"].each do |name|
  tires.children.create(name: name)
end
["サスペンション", "ブレーキ", "外装/エアロパーツ", "ライト", "内装品/シート", "ステアリング", "マフラー/排気系", "エンジン/過給器/冷却装置", "クラッチ/ミッション/駆動系", "電装品", "補強パーツ", "汎用パーツ", "外国自動車用パーツ", "その他"].each do |name|
  parts.children.create(name: name)
end
["車内アクセサリー", "カーナビ", "カーオーディオ", "メンテナンス用品", "チャイルドシート", "ドライブレコーダー", "カタログ/マニュアル", "セキュリティ", "ETC", "その他"].each do |name|
  car_accessory.children.create(name: name)
end
["国産バイク", "外国産バイク"].each do |name|
  motorcycle.children.create(name: name)
end
["タイヤ", "マフラー", "エンジン/冷却装置", "カウル/外装", "サスペンション", "ホイール", "シート", "ブレーキ", "タンク", "ライト", "チェーン/スプロケット", "メーター", "電装系", "ミラー", "外国オートバイパーツ", "その他"].each do |name|
  moto_parts.children.create(name: name)
end
["ヘルメット/シールド", "バイクウエア/装備", "アクセサリー", "メンテナンス", "カタログ/マニュアル", "その他"].each do |name|
  moto_accessory.children.create(name: name)
end
others_car_motocycle.children.create(name: "その他")
#その他子カテゴリ
matome, pet, food, drink, goods, antique, stationary = sonota.children.create([{name: "まとめ売り"}, {name: "ペット用品"}, {name: "食品"}, {name: "飲料/酒"}, {name: "日用品/生活雑貨/旅行"}, {name: "アンティーク/コレクション"}, {name: "文房具/事務用品"}])
#その他孫カテゴリ
matome.children.create(name: "まとめ売り")
["ペットフード", "犬用品", "猫用品", "かご/おり", "その他"].each do |name|
  pet.children.create(name: name)
end
["菓子", "米", "野菜", "果物", "調味料", "魚介類","肉類", "その他"].each do |name|
  food.children.create(name: name)
end
["コーヒー", "ソフトドリンク", "ミネラルウォーター", "茶", "ウイスキー", "ワイン", "ブランデー", "焼酎", "日本酒", "ビール/発泡酒", "その他"].each do |name|
  drink.children.create(name: name)
end
["タオル/バス用品", "日用品/生活雑貨", "洗剤/柔軟剤", "旅行用品", "防災関連グッズ", "その他"].each do |name|
  goods.children.create(name: name)
end
["雑貨", "工芸品", "家具", "印刷物", "その他"].each do |name|
  antique.children.create(name: name)
end
["筆記具", "ノート/メモ帳", "テープ/マスキングテープ", "カレンダー", "ファイル/バインダー", "はさみ/カッター", "のり/ホッチキス", "その他"].each do |name|
  stationary.children.create(name: name)
end