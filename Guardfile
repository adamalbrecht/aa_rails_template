guard 'spork', :wait => 120, :rspec_env => { 'RAILS_ENV' => 'test' } do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/.+\.yml$})
  watch(%r{^config/environments/.+\.rb$})
  watch(%r{^config/initializers/.+\.rb$})
  watch('spec/spec_helper.rb')
  watch(%r{^spec/support/.+\.rb$})
  watch(%r{^app/models/.+\.rb$})
end

guard 'rspec', :wait => 120, :version => 2, :cli => "--drb", :all_on_start => false, :all_after_pass => false do
  # Rails example
  watch('config/routes.rb')                          { "spec/routing" }
  watch(%r{^spec/.+_spec\.rb})
  watch(%r{^app/(.+)\.rb})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^lib/(.+)\.rb})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/requests/#{m[1]}_spec.rb"] }
  watch(%r{^app/views/(.+)/})                        { |m| "spec/requests/#{m[1]}_spec.rb" }
end
