# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


jobs = Job.create([
		{
			name: 'Rails Dev'
	    	type: 'Internship'
	    	description: 'Do some Rails shit'
	    	user_id: 1
	    	contact: 'user1@domain'
		}
		{
			name: 'Googling (a little) Shit'
	    	type: 'Internship'
	    	description: 'Practice Googling shit'
	    	user_id: 2
	    	contact: 'user2@domain'
		}
		{
			name: 'Pro Googler'
	    	type: 'Full Time'
	    	description: 'Google Shit Full time'
	    	user_id: 3
	    	contact: 'user3@domain'
		}
		{
			name: 'App Maker'
	    	type: 'Part Time'
	    	description: 'Make some dope apps n shit with some dude'
	    	user_id: 4
	    	contact: 'user4@domain'
		}

	])
