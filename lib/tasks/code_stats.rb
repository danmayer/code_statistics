STATS_DIRECTORIES = [
  %w(Controllers app/controllers),
  %w(Helpers app/helpers),
  %w(Models app/models),
  %w(Libraries lib/),
  %w(APIs app/apis),
  %w(Integration\ tests test/integration),
  %w(Functional\ tests test/functional),
  %w(Unit\ tests test/unit)
].collect { |name, dir| [ name, "#{Dir.pwd}/#{dir}" ] }.select { |name, dir| File.directory?(dir) }
 
desc "Report code statistics (KLOCs, etc) from the application"
task :stats do
  require 'lib/code_statistics'
  CodeStatistics::CodeStatistics.new(*STATS_DIRECTORIES).to_s
end
