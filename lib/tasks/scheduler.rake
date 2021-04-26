desc "This task is called by the Heroku scheduler add-on"
task :fetch_projects => :environment do
  puts "Deleting Tables..."
  Project.delete_all
  UserStarredProject.delete_all
  puts "done."
  puts "Fetching Projects..."
  Project.fetch(nextProject: false)
  puts "done."
end

task :fetch_countries => :environment do
  puts "Deleting Countries..."
  Country.delete_all
  puts "Fetching Countries... "
  Country.create_all
  puts "done."
end

