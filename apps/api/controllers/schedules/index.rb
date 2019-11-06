module Api
  module Controllers
    module Schedules
      class Index
        include Api::Action

        def call(params)
          @schedules = ScheduleRepository.new.all

          self.body = ApplicationSerializer.new(@schedules).serialize
        end
      end
    end
  end
end
