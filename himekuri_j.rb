# frozen_string_literal: true

class HimekuriJBasic
  def self.before
    begin
      exec 'java HimekuriJ'
    rescue Exception => e
      e.printbacktrace
    ensure
      GC.stat
    end
  end
end

HimekuriJBasic.before