require 'minitest/autorun'
require './lib/binary_search_tree'

class BinarySearchTreeTest < MiniTest::Test
  def setup
    @tree = BinarySearchTree.new()
  end

  def test_does_it_exist
    assert_instance_of BinarySearchTree, @tree
  end

  def test_initialize_variables
    assert_nil @tree.head
  end

  def test_insert_of_node
    node_1 = @tree.insert(61, "Bill & Ted's Excellent Adventure")
    node_2 = @tree.insert(16, "Johnny English")
    node_3 = @tree.insert(92, "Sharknado 3")
    node_4 = @tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal 0, node_1
    assert_equal 1, node_2
    assert_equal 1, node_3
    assert_equal 2, node_4
  end
end