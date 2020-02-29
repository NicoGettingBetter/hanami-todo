module Api
  module Controllers
    module Schedules
      class Index
        include Api::Action
        include JSONAPI::Hanami::Action

        def call(params)
          schedule_repository = ScheduleRepository.new
          schedules = schedule_repository.all

          self.data = schedules
          self.status = 200
        end
      end
    end
  end
end
