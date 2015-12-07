#!/usr/bin/env ruby

require 'yaml'

module GenreGen
	DATA = YAML::load_file('data.yml')

	def self.generate
		template = DATA['templates'].sample
		fill_template(template)
	end

	def self.fill_template(template)
		template % {
			adjective: adjective,
			genre: genre,
			prefix: prefix,
			suffix: suffix
		}
	end

	def self.adjective
		'adjective'
	end

	def self.genre
		'genre'
	end

	def self.prefix
		'prefix'
	end

	def self.suffix
		'suffix'
	end
end

puts GenreGen.generate
