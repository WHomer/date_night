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

  def sort(array = [])
    @left.sort(array) if @left
    array << {@data => @value}
    @right.sort(array) if @right
    array
  end
end