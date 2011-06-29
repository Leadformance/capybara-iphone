require 'capybara/driver/rack_test_driver'

module Capybara::Driver
  class Softbank < RackTest
    USER_AGENT = "DoCoMo/2.0 P903i(c100;TB;W24H12)"

    def env
      super.merge("HTTP_USER_AGENT" => USER_AGENT)
    end
  end
end
