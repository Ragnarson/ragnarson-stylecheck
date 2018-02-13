Gem::Specification.new do |s|
  s.name          = "ragnarson-stylecheck"
  s.version       = "0.6.1"
  s.summary       = "Automatic style check for ragnarson projects"
  s.description   = "Wraps rubocop for simple and consisten experience"
  s.authors       = ["Grzesiek Kołodziejczyk", "Maciej Małecki", "Oskar Szrajer", "Piotr Marciniak"]
  s.email         = "hello@ragnarson.com"
  s.files         = Dir["{config,lib}/**/*", "MIT-LICENSE", "README.md", "./"]
  s.homepage      = "https://github.com/ragnarson/ragnarson-stylecheck"
  s.license       = "MIT"

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_dependency "rake", ">= 10.0"
  s.add_dependency "rubocop", "~> 0.52.1"
end
