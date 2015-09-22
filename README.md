# valuta

Formats a number with grouped thousands.
You can customize the format in the options hash.

## Usage

```ruby
require "valuta"

Valuta.convert(1458)                  # => 1,458
Valuta.convert(1458.65)               # => 1,458.65
Valuta.convert("1458.65")             # => 1,458.65
Valuta.convert(1458, prefix: "$")     # => $1,458
Valuta.convert(1458, suffix: " NOK")  # => 1,458 NOK
Valuta.convert(1458, suffix: " ft²")  # => 1,458 ft²

Valuta.convert(100458.65, delimiter: ".", separator: ",")
# => 100.458,65
```

## Installation

```
$ gem install valuta
```
