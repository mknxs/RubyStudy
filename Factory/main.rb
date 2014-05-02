
require "./product"
require "./factory"
require "./id_card_factory"
require "./id_card"



factory = IDCardFactory.new
card1 = factory.create("makino")
card2 = factory.create("ono")
card3 = factory.create("tanaka")

card1.use
card2.use
card3.use
