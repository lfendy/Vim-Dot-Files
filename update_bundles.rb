#!/usr/bin/ruby

require 'yaml'
sources = YAML::load(File.read('source_for_bundles.txt'))
sources.each_pair do |bundle, source|
  add_command = "cd bundle/#{bundle}"
  add_command << " && git remote add source #{source}"
  upd_command = "cd bundle/#{bundle}"
  upd_command << " && git checkout master"
  upd_command << " && git fetch source"
  upd_command << " && git rebase source/master"
  upd_command << " && git push origin master"
  if ARGV[0] == "init"
    puts "-- add remote #{source} for #{bundle}"
    puts `#{add_command}`
  else
    puts "-- updating #{bundle} from #{source}"
    puts `#{upd_command}`
  end
end
