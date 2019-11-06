require 'dry/inflector'

class ApplicationSerializer
  def initialize(object)
    @object = object
  end

  def serialize
    { data: data }.to_json
  end

  private

  def data
    return array_data if @object.is_a?(Array)

    data_object(@object)
  end

  def array_data
    @object.map { |item| data_object(item) }
  end

  def data_object(object)
    {
      type: inflector.pluralize(object.class.to_s.downcase),
      id: object.id,
      attributes: attributes(object)
    }
  end

  def attributes(object)
    object.to_h
  end

  def inflector
    @inflector ||= Dry::Inflector.new
  end
end
