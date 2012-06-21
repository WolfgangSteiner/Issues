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
  s.add_dependency('PrettyComment', '>= 0.1.2')
  s.add_dependency('trollop', '>= 1.16.2')
  s.add_dependency('fattr', '>= 2.2.1')
end