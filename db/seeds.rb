# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

    User.create( :first_name => 'Alexander', :last_name => 'Ayoupov',
                 :email => 'ayoupov@gmail.com', :admin => true, :identifier_url => 'yoleas.com/ayoupov')
