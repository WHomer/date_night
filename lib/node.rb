class Node
  attr_accessor :data,
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