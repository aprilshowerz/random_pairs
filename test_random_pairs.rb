require 'minitest/autorun'
require_relative 'random_pairs.rb'

class TestMMFunctions < Minitest::Test
	def test_one_equals_one()
		assert_equal(1,1)
	end
	def test_one_pair_is_one_array
		pairs = create_pairs(['Dan', 'Marv'])
		assert_equal(1, pairs.count)
	end
	def test_four_names_is_two_pairs
		pairs = create_pairs(['Dan', 'Marv', 'Tim', 'Shirley'])
		assert_equal(2, pairs.count)
		puts pairs
	end
	def test_6_names_returns_3_pairs
		pairs = create_pairs(['Dan', 'Marv', 'Tim', 'Shirley', 'April', 'Chloe'])
		assert_equal(3, pairs.count)
		puts pairs
	end
	def test_7_names_returns_3_pairs_odd
		pairs = create_pairs(['Dan', 'Marv', 'Tim', 'Shirley','April', 'Chloe', 'Tommy'])
		assert_equal(3, pairs.count)
		puts pairs
	end
	def test_8_names_returns_4_pairs
		pairs = create_pairs(['Dan', 'Marv', 'Tim', 'Shirley','April', 'Chloe', 'Tommy', 'Brian' ])
		assert_equal(4, pairs.count)
	end
end
