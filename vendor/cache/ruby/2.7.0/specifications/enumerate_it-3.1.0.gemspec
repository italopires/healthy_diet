# -*- encoding: utf-8 -*-
# stub: enumerate_it 3.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "enumerate_it".freeze
  s.version = "3.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/lucascaton/enumerate_it/releases", "source_code_uri" => "https://github.com/lucascaton/enumerate_it" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["C\u00E1ssio Marques".freeze, "Lucas Caton".freeze]
  s.date = "2020-03-12"
  s.description = "Enumerations for Ruby with some magic powers!".freeze
  s.homepage = "https://github.com/lucascaton/enumerate_it".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.7".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Ruby Enumerations".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 4.2.0"])
    s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop-rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<wwtd>.freeze, [">= 0"])
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 4.2.0"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop-rspec>.freeze, [">= 0"])
    s.add_dependency(%q<wwtd>.freeze, [">= 0"])
  end
end
