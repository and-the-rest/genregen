#!/usr/bin/env ruby

require 'yaml'

# The primary namespace for genregen.
module GenreGen
	# release version
	VERSION = "0.0.9".freeze

	# data hash
	DATA = YAML::load_file(File.join(File.dirname(__FILE__), 'data.yml'))

	# Generates a new genre.
	# @example
	#  GenreGen.generate # => "Soft smooth ethno-baroque"
	# @return [String] a new genre
	def self.generate
		template = DATA['templates'].sample
		fill_template(template).capitalize
	end

	private

	def self.fill_template(template)
		template % {
			adjective: adjective,
			genre: genre,
			prefix: prefix,
			suffix: suffix
		}
	end

	def self.adjective
		DATA['adjectives'].sample(rand(1..3)).join(' ')
	end

	def self.genre
		DATA['genres'].sample
	end

	def self.prefix
		DATA['prefixes'].sample
	end

	def self.suffix
		DATA['suffixes'].sample
	end
end
