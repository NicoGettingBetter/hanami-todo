class ApplicationEntity < Hanami::Entity
  include Hanami::Validations

  def initialize(attributes = nil)
    @attributes = self.class.schema[attributes]
    freeze
  end
end
