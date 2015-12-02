module Faker
  VERSION = "1.30.0"

  require 'ffaker/utils/array_utils'
  require 'ffaker/utils/module_utils'

  extend ModuleUtils

  BASE_LIB_PATH = File.expand_path("..", __FILE__)

  LETTERS = k('a'..'z')

  HEX = %w(0 1 2 3 4 5 6 7 8 9 A B C D E F)

  def self.hexify(*masks)
    mask = ArrayUtils.rand(masks.flatten)
    mask.gsub!(/#/) { ArrayUtils.rand(HEX) }
    mask
  end

  def self.numerify(*masks)
    mask = ArrayUtils.rand(masks.flatten)
    mask.gsub!(/#/) { rand(10).to_s }
    mask
  end

  def self.letterify(*masks)
    mask = ArrayUtils.rand(masks.flatten)
    mask.gsub!(/\?/) { LETTERS.rand }
    mask
  end

  def self.bothify(masks)
    letterify(numerify(masks))
  end

  # Load all constants.
  Dir["#{BASE_LIB_PATH}/ffaker/*.rb"].sort.each do |f|
    require "ffaker/#{File.basename(f, '.rb')}"
  end
end
