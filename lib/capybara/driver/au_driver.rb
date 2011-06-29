require 'capybara/rack_test/driver'

module Capybara::Driver
  class Softbank < RackTest
    USER_AGENT = "KDDI-CA39 UP.Browser/6.2.0.13.1.5 (GUI) MMP/2.0"

    def env
      super.merge("HTTP_USER_AGENT" => USER_AGENT)
    end
  end
end
