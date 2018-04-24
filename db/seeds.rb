# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Shipper.create! :email => 'root@root.com', :password => 'nycda1', :password_confirmation => 'nycda1'

Ship.create! :name => 'USS Root', :container_max => 1000, :payload => 0, :location => 'Philadelphia', :shipper_id => 1

Job.create! :name => 'Bananas', :description => 'A shipment of bananas. This needs to go to London!!', :origin => 'Philadelphia', :destination => 'London', :cost => 1001, :total_containers => 250, :ship_id => 1, :shipper_id => 1

Contract.create! :ship_id => 1, :job_id => 1, :priority => 'Normal'