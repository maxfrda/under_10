# -*- encoding: utf-8 -*-
# stub: murmurhash3 0.1.6 ruby lib ext
# stub: ext/murmurhash3/extconf.rb

Gem::Specification.new do |s|
  s.name = "murmurhash3".freeze
  s.version = "0.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze, "ext".freeze]
  s.authors = ["Sokolov Yura 'funny-falcon'".freeze]
  s.date = "2014-12-24"
  s.description = "implementation of murmur3 hashing function".freeze
  s.email = ["funny.falcon@gmail.com".freeze]
  s.extensions = ["ext/murmurhash3/extconf.rb".freeze]
  s.files = ["ext/murmurhash3/extconf.rb".freeze]
  s.homepage = "https://github.com/funny-falcon/murmurhash3-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.1".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "implements mumur3 hashing function".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 0.9"])
  else
    s.add_dependency(%q<rake-compiler>.freeze, ["~> 0.9"])
  end
end
