namespace :spec do
    RSpec::Core::RakeTask.new(:unit) do |t|
        t.pattern = 'spec/unit/**/*_spec.rb'
    end
end

task default: ['spec:unit']
