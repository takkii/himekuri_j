# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "himekuri_j/version"

class HimekuriJBasic
  def self.before
  
    ruby_version = (RUBY_VERSION).to_s
    version = (HimekuriJ::VERSION).to_s
    himekuri_j = "himekuri_j-".to_s + version.to_s
    
    java_path = "$HOME/.rbenv/versions/" + ruby_version + "/lib/ruby/gems/" + ruby_version + "/gems/" + himekuri_j + "/lib/himekurij".to_s
    
    begin
    system('java' + ' ' + java_path)
    
    rescue Exception => e
    puts e.backtrace
    end
  end
end
