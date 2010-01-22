require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "mysql_warmer"
    gem.summary = %Q{Couple command line utilities to warm a cold MySQL database}
    gem.description = %Q{mysql_warmer warms up a cold database by sniffing SQL queries from a hot machine and then repeating those queries on a cold machine}
    gem.email = "entombedvirus@gmail.com"
    gem.homepage = "http://github.com/entombedvirus/mysql_warmer"
    gem.authors = ["Rohith Ravi", "Steven Lumos"]
    gem.add_dependency "eventmachine", ">= 0.12.9"
    gem.add_dependency "mysqlplus", ">= 0.1.0"
    gem.add_dependency "pcap"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
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
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "mysql_warmer #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
