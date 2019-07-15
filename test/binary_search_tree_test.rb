require 'minitest/autorun'
require './lib/binary_search_tree'

class BinarySearchTreeTest < MiniTest::Test
  def setup
    @tree = BinarySearchTree.new()
  end

  def test_does_it_exist
    assert_instance_of BinarySearchTree, @tree
  end
  
end