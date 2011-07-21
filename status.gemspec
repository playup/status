# -*- encoding: utf-8 -*-
require 'date'

Gem::Specification.new do |s|
  s.name              = 'status'
  s.version           = '0.0.1'
  s.date              = Date.today.to_s
  s.authors           = ['Fred Wu']
  s.email             = ['ifredwu@gmail.com']
  s.summary           = 'Provides application status information.'
  s.description       = "#{s.summary}"
  s.homepage          = 'http://github.com/playup/status'
  s.extra_rdoc_files  = %w(README.md)
  s.rdoc_options      = %w(--charset=UTF-8)
  s.rubyforge_project = s.name

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w(lib)

  s.add_dependency('rack', '>= 1.0')

  s.add_development_dependency('rspec-rails', '~> 2.6')
  s.add_development_dependency('rails', '>= 3.0')
  s.add_development_dependency('sqlite3')
end
