require('minitest/autorun')
require('minitest/rg')
require_relative('../card_game')
require_relative('../card')

class CardGameTest < Minitest::Test

  def setup
    @first_card = Card.new('Hearts', 1)
    @second_card = Card.new('Hearts', 3)
    @cards = [@first_card, @second_card]
    @card_game = CardGame.new
  end

  def test_checkforAce__true()
    result = @card_game.checkforAce(@first_card)
    assert_equal(true, result)
  end

  def test_checkforAce__false()
    result = @card_game.checkforAce(@second_card)
    assert_equal(false, result)
  end

  def test_highest_card__second_argument_wins
    result = @card_game.highest_card(@first_card, @second_card)
    assert_equal(@second_card, result)
  end

  def test_highest_card__first_argument_wins
    result = @card_game.highest_card(@second_card, @first_card)
    assert_equal(@second_card, result)
  end

  def test_cards_total
    result = CardGame.cards_total(@cards)
    assert_equal("You have a total of 4", result)

  end

  #final end
end
