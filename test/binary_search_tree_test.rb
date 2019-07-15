require 'minitest/autorun'
require './lib/binary_search_tree'

class BinarySearchTreeTest < MiniTest::Test
  def setup
    @tree = BinarySearchTree.new()

    @node_1 = @tree.insert(61, "Bill & Ted's Excellent Adventure")
    @node_2 = @tree.insert(16, "Johnny English")
    @node_3 = @tree.insert(92, "Sharknado 3")
    @node_4 = @tree.insert(50, "Hannibal Buress: Animal Furnace")
  end

  def test_does_it_exist
    assert_instance_of BinarySearchTree, @tree
  end

  def test_initialize_variables
    tree = BinarySearchTree.new()

    assert_nil tree.head
  end

  def test_insert_of_node
    assert_equal 0, @node_1
    assert_equal 1, @node_2
    assert_equal 1, @node_3
    assert_equal 2, @node_4
  end

  def test_include_value
    assert @tree.include?(16)
    refute @tree.include?(72)
  end

  def test_depth_of
    assert_equal 1, @tree.depth_of(92)
    assert_equal 2, @tree.depth_of(50)
    assert_nil @tree.depth_of(99)
  end

  def test_max
    result = {"Sharknado 3"=>92}
    
    assert_equal result, @tree.max
  end
end