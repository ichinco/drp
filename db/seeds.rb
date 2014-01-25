# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Users.delete_all

@knightfu = Users.create email:'knight.w.fu@gmail.com', 
		 				 password:'123456789012345', 
			             password_confirmation:'123456789012345', 
			             first_name: 'Knight',
			             last_name: 'Fu' unless Users.find_by email:'knight.w.fu@gmail.com'
@knightfu.save		            

@fiorda   = Users.create email:'fiorda.f@gmail.com',
                         password:'11223344556677',
                         password_confirmation:'11223344556677',
                         first_name: 'Francesco',
                         last_name: 'Fiordalisi' \
                            unless Users.find_by email:'fiorda.f@gmail.com'
@fiorda.save
