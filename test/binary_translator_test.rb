require './lib/binary_translator'
require 'minitest/autorun'
require 'minitest/pride'


class BinaryTranslatorTest < Minitest::Test

  def test_it_exists
  bt = BinaryTranslator.new
  assert_instance_of BinaryTranslator, bt
  end

  def test_translate_lowercase
  bt = BinaryTranslator.new
  bt.translate("a")
  assert_equal "000001", bt.translate("a")
  end

  def test_translate_upercase
  bt = BinaryTranslator.new
  bt.translate("A")
  assert_equal "000001", bt.translate("A")
  end

#
end
