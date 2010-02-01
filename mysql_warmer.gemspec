# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mysql_warmer}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Rohith Ravi", "Steven Lumos"]
  s.date = %q{2010-02-01}
  s.description = %q{mysql_warmer warms up a cold database by sniffing SQL queries from a hot machine and then repeating those queries on a cold machine}
  s.email = %q{entombedvirus@gmail.com}
  s.executables = ["mysql_sniff", "mysql_warmer"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/mysql_sniff",
     "bin/mysql_warmer",
     "lib/mysql_warmer.rb",
     "lib/mysql_warmer/em/mysql.rb",
     "mysql_warmer.gemspec",
     "test/helper.rb",
     "test/test_mysql_warmer.rb"
  ]
  s.homepage = %q{http://github.com/entombedvirus/mysql_warmer}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Couple command line utilities to warm a cold MySQL database}
  s.test_files = [
    "test/helper.rb",
     "test/test_mysql_warmer.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<eventmachine>, [">= 0.12.9"])
      s.add_runtime_dependency(%q<mysqlplus>, [">= 0.1.0"])
      s.add_runtime_dependency(%q<pcap>, [">= 0"])
    else
      s.add_dependency(%q<eventmachine>, [">= 0.12.9"])
      s.add_dependency(%q<mysqlplus>, [">= 0.1.0"])
      s.add_dependency(%q<pcap>, [">= 0"])
    end
  else
    s.add_dependency(%q<eventmachine>, [">= 0.12.9"])
    s.add_dependency(%q<mysqlplus>, [">= 0.1.0"])
    s.add_dependency(%q<pcap>, [">= 0"])
  end
end

