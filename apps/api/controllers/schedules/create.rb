module Api
  module Controllers
    module Schedules
      class Create
        include Api::Action
        include JSONAPI::Hanami::Action

        deserializable_resource :schedule, class: DeserializableSchedule

        params do
          required(:schedule).schema do
            required(:title).filled(:str?)
          end
        end

        def call(params)
          repo = ScheduleRepository.new
          Hanami::Logger.new('Controller').info(params.to_h)
          schedule = repo.create(params[:schedule])

          self.data = schedule
          self.status = 201
        end
      end
    end
  end
end
