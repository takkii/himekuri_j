# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'open3'
require "himekuri_j/version"

class HimekuriJBasic
  def self.before
    # vesion info
    ruby_version = (RUBY_VERSION).to_s
    version = (HimekuriJ::VERSION).to_s
    himekuri_j = "himekuri_j-".to_s + version.to_s
    java_path= ($JAVA_HOME/bin/java).to_s
    
    javalang_path = java_path + " " + "run" + " "+  "$HOME/.rbenv/versions/" + ruby_version + "/lib/ruby/gems/" + ruby_version + "/gems/" + himekuri_j + "/lib/HimekuriJ.class".to_s
    stdout_java, stderr_java, status_java = Open3.capture3(javalang_path)
    
    stdout_java
  end
end