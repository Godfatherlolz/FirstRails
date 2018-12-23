require 'csv'
namespace :shops_import do
  desc "Imports shops_shopmium.csv into shops table in the database"
  task csv_import: :environment do
    CSV.foreach("shops.csv", :headers => true, :col_sep => ',') do |row|
      Shop.create(:chain => row['chain'], :name => row['name'], :latitude => row['latitude'],:longitude => row['longitude'],:address => row['address'],:city => row['city'],:zip => row['zip'],:phone => row['phone'],:country_code => row['country_code'])
    end
  end
end
