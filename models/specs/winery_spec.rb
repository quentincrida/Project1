require('minitest/autorun')
require('minitest/reporters')
require_relative('../winery')


MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestWinery < MiniTest::Test


  def test_can_create_new_winery
    winery_details = {
      'name' => 'Boekenhoutskloof',
      'address' => 'Excelsior Road, Franschhoek, 7690, South Africa'
    }
    new_winery = Winery.new(winery_details)
    assert_equal('Boekenhoutskloof', new_winery.name)

  end

  def  setup
    @winery1 = {
      name: "Boekenhoutskloof",
      address: "Excelsior Road, Franschhoek, 7690, South Africa"
    }
  end

  def test_get_name
    result = get_name(@winery1)
    assert_equal("Boekenhoutskloof", result)
  end



end
