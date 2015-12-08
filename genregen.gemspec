require "#{File.dirname(__FILE__)}/lib/genregen"

Gem::Specification.new do |s|
	s.name = 'genregen'
	s.version = GenreGen::VERSION
	s.summary = 'genregen - A music genre generator.'
	s.description = 'A gem for generating music genres.'
	s.authors = ['William Woodruff']
	s.email = 'william@tuffbizz.com'
	s.files = Dir['LICENSE', 'README.md', '.yardopts', 'lib/**/*']
	s.executables << 'genregen'
	s.homepage = 'https://github.com/and-the-rest/genregen'
	s.license = 'MIT'
end
