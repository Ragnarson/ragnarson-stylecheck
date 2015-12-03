Gem::Specification.new do |s|
  s.name          = "ragnarson-stylecheck"
  s.version       = "0.0.3"
  s.date          = "2015-03-30"
  s.summary       = "Automatic style check for ragnarson projects"
  s.description   = "Wraps rubocop for simple and consisten experience"
  s.authors       = ["Piotr Marciniak", "Grzesiek Kołodziejczyk", "Oskar Szrajer"]
  s.email         = "oskarszrajer@gmail.com"
  s.files         = Dir["{config,lib}/**/*", "MIT-LICENSE", "README.md", "./"]
  s.homepage      = "https://github.com/ragnarson/ragnarson-stylecheck"
  s.license       = "MIT"

  s.add_dependency "rubocop", "~> 0.29.1"
end
