# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FbAgency.create!(:AgencyName => 'Northern Illinois', :DateOfVerification => '20-August-2017')
FbAgency.create!(:AgencyName => 'Northern Illinois2', :DateOfVerification => '20-August-2017')
FbAgency.create!(:AgencyName => 'Northern Illinois3', :DateOfVerification => '20-August-2017')