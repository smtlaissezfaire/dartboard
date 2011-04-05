require File.expand_path(File.dirname(__FILE__) + "/../lib/dartboard")

begin
  require 'jeweler'

  def set_version_for_jewler
    version = Dartboard::Version::STRING

    File.open(File.expand_path(File.dirname(__FILE__) + "/../VERSION"), "w") do |f|
      f << version
    end
  end

  Jeweler::Tasks.new do |gemspec|
    set_version_for_jewler

    gemspec.name           = "dartboard"
    gemspec.summary        = "Randomly select values based on percentages"
    gemspec.description    = "Randomly select values based on percentages"
    gemspec.email          = "scott@railsnewbie.com"
    gemspec.homepage       = "http://github.com/smtlaissezfaire/dartboard"
    gemspec.authors        = ["Scott Taylor"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
