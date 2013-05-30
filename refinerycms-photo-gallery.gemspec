# Encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'refinery/photo_gallery/version'

version = Refinery::PhotoGallery::Version.to_s

Gem::Specification.new do |s|
  s.name              = %q{refinerycms-photo-gallery}
  s.version           = version
  s.description       = %q{Open source Ruby on Rails photo gallery engine designed for integration with Refinery CMS.}
  s.summary           = %q{Ruby on Rails photo gallery engine for Refinery CMS.}
  s.email             = %q{espen@inspired.no, martin.markech@matho.sk}
  s.homepage          = %q{http://github.com/Matho/refinerycms-photo-gallery}
  s.authors           = ['Espen Antonsen', 'Martin Markech']
  s.require_paths     = %w(lib)

  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- spec/*`.split("\n")

  # Runtime dependencies
  s.add_dependency    'refinerycms-core',     '~> 2.0.10'
  s.add_dependency    'refinerycms-settings', '~> 2.0.2'
  s.add_dependency    'refinerycms-i18n',     '~> 2.0.0'
  s.add_dependency    'mime-types'
  s.add_dependency    'mini_exiftool'
  s.add_dependency    'geocoder',             '~> 1.1.8'
  s.add_dependency    'acts-as-taggable-on',  '~> 2.3.1'

  # Development dependencies
  s.add_development_dependency 'refinerycms-testing', '~> 2.0.10'
end
