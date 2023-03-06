require './lib/version.rb'

Gem::Specification.new do |s|
  s.name        = 'ruby-issues'
  s.version     = Issues::VERSION
  s.date        = Time.new.to_s[0,10]
  s.summary     = "Git-style issue tracker."
  s.description = "Issues is a lightweight, git-style command-line issue tracker."
  s.authors     = ["Wolfgang Steiner"]
  s.email       = 'wolfgang.steiner@gmail.com'
  s.executables = ["issues", "todos"]
  s.homepage    = 'https://github.com/WolfgangSteiner/Issues'
  s.add_runtime_dependency('PrettyComment', '~> 0.1', '>= 0.1.2')
  s.add_runtime_dependency('optimist', '~> 3.0', '>= 3.0.1')
  s.add_runtime_dependency('fattr', '~> 2.4', '>= 2.4.0')
end
