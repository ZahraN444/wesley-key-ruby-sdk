Gem::Specification.new do |s|
  s.name = 'wesley-key-sdk'
  s.version = '2.0.0'
  s.summary = 'tesst'
  s.description = 'Omnis nisi cumque si'
  s.authors = ['Kenyon Jacobs']
  s.email = ['goro@mailinator.com']
  s.homepage = 'https://www.halefokodaqiby.com'
  s.licenses = ['MIT']
  s.metadata  = {
}

  s.add_dependency('apimatic_core_interfaces', '~> 0.2.3')
  s.add_dependency('apimatic_core', '~> 0.3.20')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.6')
  s.add_development_dependency('minitest', '~> 5.24.0')
  s.add_development_dependency('minitest-proveit', '~> 1.0')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
