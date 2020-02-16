module Api
  module Controllers
    module Schedules
      class Create
        include Api::Action
        include JSONAPI::Hanami::Action

        deserializable_resource :schedule

        params do
          # required(:schedule).schema do
          #   required(:title)
          # end
        end

        def call(params)
          deser = DeserializableSchedule.call(params)
          repo = ScheduleRepository.new
          Hanami::Logger.new('Controller').info(params.to_h)
          Hanami::Logger.new('Controller').info(deser)
          Hanami::Logger.new('Controller').info(deser.to_h)
          # schedule = repo.create(params)

          # self.data = schedule
          self.status = 201
        end
      end
    end
  end
end
