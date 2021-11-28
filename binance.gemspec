lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'binance/version'

Gem::Specification.new do |spec|
  spec.name          = 'marcel-binance'
  spec.version       = Binance::VERSION
  spec.authors       = ['Marcel Bonnet']
  spec.email         = ['marcel.social@protonmail.com']

  spec.summary       = 'API Wrapper for the Binance cryptocurrency exchange.'
  spec.homepage      = 'https://github.com/marcelbonnet/binance'
  spec.license       = 'MIT'

  spec.files         = Dir['bin/*'] +
                       Dir['lib/**/*.rb']

  spec.require_paths = ['lib']

  spec.bindir        = 'bin'

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_runtime_dependency 'faraday', '~> 0.12'
  spec.add_runtime_dependency 'faraday_middleware', '~> 0.12'
  spec.add_runtime_dependency 'faye-websocket', '~> 0.10'
end
