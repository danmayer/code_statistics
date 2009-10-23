require 'rubygems'
require 'rake'
require 'lib/tasks/code_stats'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "code_statistics"
    gem.summary = %Q{Making a gem of the normal rails rake stats method, to make it more robust and work on non rails projects}
    gem.description = %Q{"This is a port of the rails 'rake stats' method so it can be made more robust and work for non rails projects. New features may eventually be added as well."}
    gem.email = "dan@devver.net"
    gem.homepage = "http://github.com/danmayer/code_statistics"
    gem.authors = ["Dan Mayer"]
    gem.add_development_dependency "thoughtbot-shoulda"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/*_test.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "code_statistics #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
