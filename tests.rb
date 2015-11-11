require "minitest/autorun"

class TestString < Minitest::Test

  def test_two_string_can_be_equal
    str_1 = "this is a sentence"
    str_2 = "this is a sentence"

    assert_equal(str_1, str_2)
  end

  def test_join_two_string_with_a_plus
    
    str_1 = "abc"
    str_2 = "xyz"

    actual = str_1 + str_2

    assert_equal("abcxyz", actual)
  end

  def test_join_two_string_with_alternate_syntax
    
    first = "John"
    last = "Snow"

    actual = "#{first} #{last}"

    assert_equal("John Snow", actual)
  end

  # docs: http://ruby-doc.org/core-2.2.0/String.html#method-i-length
  def test_the_length_of_a_string
    
    str_1 = "abc"

    actual = str_1.length.to_i

    assert_equal(3, actual)
  end

  # docs: http://ruby-doc.org/core-2.2.0/String.html#method-i-include-3F
  def test_if_a_string_contains_a_sub_string  	
    
    # sub string is a smaller string in a larger one
    str_1 = "hello there world"
    sub_string = "ll"

    actual = "hello there world".include? "ll"

    assert(actual)
  end

  # docs: http://ruby-doc.org/core-2.2.0/String.html#method-i-capitalize
  def test_capatalizing_a_string  	
    
    str_1 = "mark"
    actual = "mark".capitalize
    assert_equal("Mark", actual)
  end

  def test_the_string_representation_of_a_number_is_not_equal_to_a_real_number
    
    str_1 = "5"
    refute_equal(5, str_1) # refute equal means the test will pass if they are not equal
  end

  # docs: http://ruby-doc.org/core-2.2.0/String.html#method-i-to_i
  def test_convert_a_string_representation_of_a_number_to_a_real_number
    
    str_1 = "50"
    actual = "50".to_i
    assert_equal(50, actual)
  end

  # docs: http://ruby-doc.org/core-2.2.0/String.html#method-i-strip
  def test_script_white_spaces
    
    str_1 = "  word   "
    actual = "  word  ".lstrip
    assert_equal("word", actual)
  end

  def test_join_and_capatalize_two_strings
    skip "waiting to be implemented"
    first = "mark"
    last = "smith"

    actual = "a" # replace "a" the logic to capitalize and join the strings

    assert_equal("Mark Smith", actual)
  end

end