module Api
  module Controllers
    module Schedules
      class Index
        include Api::Action

        def call(params)
          @schedules = ScheduleRepository.new.all

          self.body = @schedules.map { |s| s.to_h }.to_json
        end
      end
    end
  end
end
