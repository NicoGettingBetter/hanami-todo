module Api
  module Controllers
    module Schedules
      class Show
        include Api::Action
        include JSONAPI::Hanami::Action

        def call(params)
          schedule_repository = ScheduleRepository.new
          schedule = schedule_repository.first

          self.data = schedule
          self.status = 200
        end
      end
    end
  end
end
