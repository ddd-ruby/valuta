require_relative "lib/valuta/version"

Gem::Specification.new do |s|
  s.name        = "valuta"
  s.version     = Valuta::VERSION
  s.summary     = "Formats a number into a currency string (e.g., $1,567.65)."
  s.description = s.summary
  s.authors     = ["Mayn Ektvedt Kjær"]
  s.email       = ["mayn.kjaer@gmail.com"]
  s.homepage    = "https://github.com/harmoni/valuta"
  s.license     = "MIT"

  s.files = `git ls-files`.split("\n")

  s.add_development_dependency "cutest", "~> 1.2"
end
