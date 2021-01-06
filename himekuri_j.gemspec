# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "himekuri_j/version"

Gem::Specification.new do |spec|
  spec.name          = "himekuri_j"
  spec.version       = HimekuriJ::VERSION
  spec.authors       = ["Takayuki Kamiyama"]
  spec.email         = ["karuma.reason@gmail.com"]
  spec.summary       = %q{日めくりJavaです、呼び出すと現在時刻表示します。}
  spec.description   = %q{Javaのクラスを呼び、現在時刻表示します}
  spec.license       = "MIT"
  spec.executables   = %w(himekuri_j)
  spec.homepage      = "http://rubyist.hatenablog.com"
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end
