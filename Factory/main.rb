
require "./product"
require "./factory"
require "./id_card_factory"
require "./id_card"

# ファクトリメソッド
# factory methodではインスタンスの作り方をスーパークラス側で決める
# 具体的なクラス名などは定めない
# 具体的な肉付けは全てサブクラスで行う
# これによって、インスタンスの生成の枠組みと実際の
# インスタンス生成のクラスを分けてがんが得られる


factory = IDCardFactory.new
card1 = factory.create("makino")
card2 = factory.create("ono")
card3 = factory.create("tanaka")

card1.use
card2.use
card3.use