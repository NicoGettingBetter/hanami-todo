module Api
  module Views
    module Schedules
      class Index
        include Api::View
        layout false

        def render
          '[]'
        end
      end
    end
  end
end
