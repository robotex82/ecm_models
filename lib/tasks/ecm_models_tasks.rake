# desc "Explaining what the task does"
# task :ecm_models do
#   # Task goes here
# end
namespace :ecm do
  namespace :models do
   namespace :db do
     desc "Seeds the database for Ecm::Models initial usage"
     task :seed => :environment do |t, args|
       Ecm::Models::Engine.load_seed
     end
    end
  end
end

