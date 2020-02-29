module Api
  module Controllers
    module Schedules
      class Update
        include Api::Action
        include JSONAPI::Hanami::Action

        deserializable_resource :schedule, class: DeserializableSchedule

        params do
          required(:id).filled(:str?)

          required(:schedule).schema do
            required(:title).filled(:str?)
          end
        end

        def call(params)
          repo = ScheduleRepository.new
          schedule = repo.update(params[:id], params[:schedule])

          self.data = schedule
          self.status = 200
        end
      end
    end
  end
end
