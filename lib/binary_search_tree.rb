require './lib/node'

class BinarySearchTree
  attr_reader :head

  def initialize
    @head = nil
  end

  def load(file = 'movies.txt')
    File.readlines('movies.txt').map do |line|
      movie = line.chomp.split(",")
      value = movie[0].strip.to_i
      data = movie[1].strip
      if include?(value) == false
        insert(value, data)
      end
    end
  end

  def sort
    @head.sort
  end

  def max
    node = @head
    until node.right.nil?
      node = node.right
    end
    return {node.data => node.value}
  end

  def min
    node = @head
    until node.left.nil?
      node = node.left
    end
    return {node.data => node.value}
  end

  def depth_of(value)
    node = @head
    depth = 0
    until node.nil?
      if node.value == value 
        return depth
      elsif value < node.value
        node = node.left
        depth += 1
      elsif value > node.value
        node = node.right
        depth += 1
      end
    end
    return nil
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