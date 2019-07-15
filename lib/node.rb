class Node
  attr_reader :data,
              :left,
              :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end
end