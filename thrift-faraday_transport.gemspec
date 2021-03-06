
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'thrift-faraday_transport'
  spec.version       = File.read(__dir__ + '/VERSION')
  spec.authors       = ['Dmitrij Fedorenko']
  spec.email         = ['<c0va23@gmail.com>']

  spec.summary       = 'Thrift HTTP transport'
  spec.description   = 'Thrift HTTP transport over Faraday'
  spec.homepage      = 'https://github.com/c0va23/ruby-thrift-faraday-transport'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.2'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.52.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.21.0'

  spec.add_dependency 'faraday', '~> 0.9.0'
  spec.add_dependency 'thrift', '~> 0.9.0'
end
