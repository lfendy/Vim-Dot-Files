require 'yaml'
sources = YAML::load(File.read('source_for_bundles.txt'))
sources.each_pair do |bundle, source|
  command = "cd bundle/#{bundle}"
  command << " && git checkout master"
  command << " && git remote add source #{source}"
  command << " && git fetch source"
  command << " && git rebase source/master"
  p `#{command}`
end
