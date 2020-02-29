class Schedule < Hanami::Entity
  include Hanami::Validations

  validations do
    required(:title) { filled? & str? }
  end
end
