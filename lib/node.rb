class Node
  attr_reader :data,
              :left,
              :right,
              :value

  def initialize(value, data)
    @value = value
    @data = data
    @left = nil
    @right = nil
  end
end