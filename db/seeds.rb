# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Medication.create(name:"medication1",description:"description 1",dosage:12,morning:"1",midday:"1",afternoon:"1",evening:"1",user_id:1)
Medication.create(name:"medication2",description:"description 2",dosage:33,morning:"1",midday:"0",afternoon:"1",evening:"0",user_id:1)
Medication.create(name:"medication3",description:"description 3",dosage:34,morning:"0",midday:"0",afternoon:"1",evening:"0",user_id:1)
Medication.create(name:"medication4",description:"description 4",dosage:55,morning:"1",midday:"0",afternoon:"1",evening:"0",user_id:1)
Medication.create(name:"medication5",description:"description 5",dosage:23,morning:"1",midday:"0",afternoon:"1",evening:"0",user_id:1)
