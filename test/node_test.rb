require 'minitest/autorun'
require './lib/node'

class NodeTest < MiniTest::Test
  def setup
    @node = Node.new(50, 'Some Text')
  end

  def test_does_it_exist
    assert_instance_of Node, @node
  end

  def test_initialize_values
    assert 'Some Text', @node.data
    assert_nil @node.left
    assert_nil @node.right
    assert 50, @node.value
  end
end