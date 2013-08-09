namespace :data do
  task :import => :environment do
    Slurper.slurp
  end
end
