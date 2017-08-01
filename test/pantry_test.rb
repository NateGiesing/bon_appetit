require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test

  def test_it_exist
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
  end

  def test_stock_is_a_hash
    pantry = Pantry.new
    expected = {}

    assert_instance_of Hash, pantry.stock
    assert_equal expected, pantry.stock
  end

  def test_stock_check
    pantry =  Pantry.new
    expected = 0

    assert_equal expected, pantry.stock_check("Cheese")
  end

  def test_it_can_be_restocked_with_ten
    pantry = Pantry.new
    pantry.restock("Cheese", 10)
    result = pantry.stock_check("Cheese")

    assert_equal 10, result
  end

  def test_it_can_be_restocked_thirty
    pantry = Pantry.new
    pantry.restock("Cheese", 10)
    pantry.restock("Cheese", 20)

    result = pantry.stock_check("Cheese")
  end

  def test_centi_unit_conversion
    pantry = Pantry.new
    result = pantry.centi_units(200)

    assert_equal 2, result
 end



end
