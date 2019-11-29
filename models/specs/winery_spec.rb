require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/winery')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class Winery < MiniTest::Test

  def test_can_create_new_winery
    winery_details = {
      'name' => 'Boekenhoutskloof',
      'address' => 'Excelsior Road, Franschhoek, 7690, South Africa'
    }
    new_winery = Winery.new(winery_details)
    assert_equal('Boekenhoutskloof', new_winery.name)

  end

end
