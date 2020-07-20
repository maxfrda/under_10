# -*- encoding: utf-8 -*-
# stub: capybara-mechanize 1.11.0 ruby lib

Gem::Specification.new do |s|
  s.name = "capybara-mechanize".freeze
  s.version = "1.11.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jeroen van Dijk".freeze]
  s.date = "2018-07-12"
  s.description = "RackTest driver for Capybara, but with remote request support thanks to mechanize".freeze
  s.email = "jeroen@jeevidee.nl".freeze
  s.homepage = "https://github.com/jeroenvandijk/capybara-mechanize".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "RackTest driver for Capybara with remote request support".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<mechanize>.freeze, ["~> 2.7.0"])
    s.add_runtime_dependency(%q<capybara>.freeze, [">= 2.4.4", "< 4"])
  else
    s.add_dependency(%q<mechanize>.freeze, ["~> 2.7.0"])
    s.add_dependency(%q<capybara>.freeze, [">= 2.4.4", "< 4"])
  end
end
