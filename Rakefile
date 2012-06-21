require './lib/version.rb'

task :build do
  `gem build ruby-issues.gemspec`
end

task :install => :build do
  `sudo gem install ruby-issues-#{Issues::VERSION}.gem`
end

task :push => :build do
  `gem push ruby-issues-#{Issues::VERSION}.gem`
end

task :default => :install
