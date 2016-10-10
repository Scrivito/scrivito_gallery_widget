$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "scrivito_gallery_widget/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "scrivito_gallery_widget"
  s.version     = ScrivitoGalleryWidget::VERSION

  s.authors     = ["Scrivito"]
  s.email       = ["support@scrivito.com"]
  s.homepage    = "https://www.scrivito.com"

  s.summary     = "A scrivito widget to add a simpple gallery."
  s.description = "A scrivito widget to add a simpple gallery."
  s.license     = "LGPL-3.0"

  s.files = Dir[
    "{app,lib,scrivito}/**/*",
    "LICENSE",
    "Rakefile"
  ]

  s.add_dependency 'scrivito'
end
