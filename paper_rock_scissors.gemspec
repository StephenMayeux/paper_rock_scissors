# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paper_rock_scissors/version'

Gem::Specification.new do |spec|
  spec.name          = "paper_rock_scissors"
  spec.version       = PaperRockScissors::VERSION
  spec.authors       = ["Stephen Mayeux"]
  spec.email         = ["stephenmayeux@gmail.com"]

  spec.summary       = %q{Very simple game of paper, rock, scissors.}
  spec.description   = %q{I am an English teacher in South Korea, and the children here don't play rock, paper, scissors. They play PAPER, ROCK, SCISSORS!}
  spec.homepage      = "https://github.com/StephenMayeux/paper_rock_scissors"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
