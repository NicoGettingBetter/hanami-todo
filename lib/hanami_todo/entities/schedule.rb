class Schedule < ApplicationEntity
  validations do
    required(:title) { filled? & str? }
  end
end
