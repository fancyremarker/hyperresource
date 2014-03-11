require 'rake/testtask'
require './lib/hyper_resource/version'

require 'bundler/gem_tasks'

task :default => [:test]

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.libs << 'test/lib'
  t.test_files = FileList['test/**/*_test.rb']
  #t.warning = true
  t.verbose = true
end

task :test_server do
  require './test/live/live_test_server'
  port = ENV['PORT'] || ENV['port'] || 3000
  Rack::Handler::WEBrick.run(LiveTestServer.new, :Port => port)
end

