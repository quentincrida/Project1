require('minitest/autorun')
require('minitest/reporters')
require_relative('../wine')
require('pry')


MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestWine < MiniTest::Test


  def test_can_create_new_wine

    wine_details = {
      "name" => "Syrah",
      "description" => "red",
      "stock" => 24,
      "cost" => 12,
      "price" => 24
    }
    new_wine = Wine.new(wine_details)
    assert_equal('Syrah', new_wine.name)

  end


end
