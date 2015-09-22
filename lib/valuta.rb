require_relative "valuta/version"

class Valuta
  FORMAT = /(\d{3})(?=\d)/
  SEPARATOR = ".".freeze

  DEFAULTS = {
    delimiter: ",",
    separator: ".",
    suffix: nil,
    prefix: nil
  }

  def self.convert(number, options={})
    return new(options).convert(number)
  end

  def initialize(options = {})
    @options = DEFAULTS.merge(options)
  end

  def convert(number)
    prefix = @options[:prefix]
    suffix = @options[:suffix]

    return [prefix, format(number.to_s), suffix].join
  end

  private

  def format(str)
    return parts(str.strip).join(@options[:separator])
  end

  def parts(str)
    left, right = str.split(SEPARATOR)

    if left.length > 3
      left.reverse!
      left.gsub!(FORMAT, "\\1#{ @options[:delimiter] }")
      left.reverse!
    end

    return [left, right].compact
  end
end
