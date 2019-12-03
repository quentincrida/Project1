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

  def test_winery_address
    winery_options = {  'name' => 'Groot Constantia',
      'address' => 'Groot Constantia Rd, Constantia, Cape Town, 7806, South Africa'
      }
      winery_address = Winery.new(winery_options)
      assert_equal('Groot Constantia Rd, Constantia, Cape Town, 7806, South Africa', winery_address.address)
    end
