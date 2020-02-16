module Api
  module Controllers
    module Schedules
      class Index
        include Api::Action
        include JSONAPI::Hanami::Action

        def call(params)
          schedule_repository = ScheduleRepository.new
          @schedules = schedule_repository.all
          # Hanami::Logger.new('Controller').info(schedule_repository)
          # Hanami::Logger.new('Controller').info(@schedules)

          # self.body = ApplicationSerializer.new(@schedules).serialize
          self.data = @schedules
          self.status = 200
        end
      end
    end
  end
end
