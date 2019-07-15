require './lib/node'

class BinarySearchTree
  attr_reader :head

  def initialize
    @head = nil
  end

  def include?(value)
    node = @head
    until node.nil?
      if node.value == value 
        return true
      elsif value < node.value
        node = node.left
      elsif value > node.value
        node = node.right
      end
    end
    return false
  end

  def insert(value, data)
    position = 0
    if @head.nil?
      @head = Node.new(value, data)
      return position
    else
      node = @head
      node_created = false
      until node_created do
        if node.value > value
          position += 1
          if node.left.nil?
            node.left = Node.new(value, data)
            node_created = true
            return position
          else
            node = node.left
          end
        elsif node.value < value
          position += 1
          if node.right.nil?
            node.right = Node.new(value, data)
            node_created = true
            return position
          else
            node = node.right
          end
        end
      end
    end
  end
end