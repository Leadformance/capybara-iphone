require 'capybara/driver/rack_test_driver'

module Capybara::Driver
  class Softbank < RackTest
    USER_AGENT = "SoftBank/1.0/930SH/SHJ001/SN000000000000000" +
      " Browser/NetFront/3.4" +
      " Profile/MIDP-2.0" +
      " Configuration/CLDC-1.1"

    def env
      super.merge("HTTP_USER_AGENT" => USER_AGENT)
    end
  end
end
