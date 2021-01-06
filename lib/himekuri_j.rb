# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "himekuri_j/version"

class HimekuriJBasic
  def self.before
    
    begin
    system('java HimekuriJ')
    
    rescue Exception => e
    puts e.backtrace
    end
  end
end
