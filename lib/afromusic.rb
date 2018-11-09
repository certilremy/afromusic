require_relative "./afromusic/version"
require "open-uri"
require "nokogiri"

module Afromusic
  class Error < StandardError; end
  # Your code goes here...
end
require_relative './afromusic/cli'
require_relative './afromusic/music'