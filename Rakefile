desc "Install all the programs into ~/bin by symlinking them."
task :install do
  path = Dir.pwd
  Dir.chdir File.join(ENV['HOME'], 'bin') do
    Dir[File.join(path, '*')].each do |source|
      destination = File.basename(source)
      if File.exist?(destination)
        puts "- %s already exists" % destination
      elsif File.file?(source) && File.executable?(source)
        ln_s source, destination
        puts "+ %s linked" % destination
      else
        puts "- %s skipped" % destination
      end
    end
  end
end
