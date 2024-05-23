# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

##hisatetsu
desc "Reset the database"
task "db:migrate:reset" do
  system("bin/rails db:migrate:reset")
end