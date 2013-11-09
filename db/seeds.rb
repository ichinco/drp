# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@knightfu = Users.create email:'knight.w.fu@gmail.com', 
		 				 password:'123456789012345', 
			             password_confirmation:'123456789012345', 
			             first_name: 'Knight',
			             last_name: 'Fu' unless Users.find_by email:'knight.w.fu@gmail.com'
@knightfu.save			            
