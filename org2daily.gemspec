# encoding: utf-8

Gem::Specification.new do |s|
  s.name             = "org2daily"
  s.version          = "0.0.1"
  s.date             = Time.now.utc.strftime("%Y-%m-%d")
  s.homepage         = "http://github.com/francois2metz/org2daily"
  s.authors          = "François de Metz"
  s.email            = "francois@2metz.fr"
  s.description      =  <<-EOF

EOF
  s.summary          = ""
  s.extra_rdoc_files = %w(README.md)
  s.files            = Dir["README.md", "Gemfile", "lib/**/*.rb", "bin/*.rb"]
  s.executables      << "org2daily"
  s.bindir           = "bin"
  s.require_paths    = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.add_dependency   "org-ruby", "~> 0.5.3"
  s.add_development_dependency "minitest", "~> 2.0"
  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
end
