require "bundler/setup"
require "cutest"

require_relative "../lib/valuta"

scope do
  test "convert default" do
    number = 1567945

    assert_equal("1,567,945", Valuta.convert(number))
  end

  test "convert decimal" do
    number = 1674.765

    assert_equal("1,674.765", Valuta.convert(number))
  end

  test "covert with custom delimiter and seperator" do
    number = 1674.765
    options = { delimiter: ".", separator: "," }

    assert_equal("1.674,765", Valuta.convert(number, options))
  end

  test "convert with prefix" do
    number = 1567945

    assert_equal("$1,567,945", Valuta.convert(number, prefix: "$"))
  end

  test "convert with suffix" do
    number = 1567945

    assert_equal("1,567,945 NOK", Valuta.convert(number, suffix: " NOK"))
  end

  test "covert negative number" do
    number = -1563.654

    assert_equal("-1,563.654", Valuta.convert(number))
  end
end
