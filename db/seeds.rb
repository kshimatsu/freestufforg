# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Item.create title:"Baseball Glove", description:"Nokona softball glove. Has been barely used.", location:"Wan Chai", expiry_date:"2015-12-09", lister_email:"john.lok.djinn@gmail.com", lister_tel:"8334-4020", sms_notify:TRUE, confirm_posting:TRUE
src = File.join(Rails.root, "db/seed_images/baseballglove.png")
src_file = File.new(src)
Medium.create item_id: a.id, file_name: src_file


b = Item.create title:"Vivitar Camera Flash", description:"An old camera flash I have lying around and have no use for.", location:"Wan Chai", expiry_date:"2015-12-12", lister_email:"john.lok.djinn@gmail.com", lister_tel:"3402-4209", sms_notify:TRUE, confirm_posting:TRUE
src = File.join(Rails.root, "db/seed_images/camera-flash.png")
src_file = File.new(src)
Medium.create item_id: b.id, file_name: src_file

c = Item.create title:"Carving Knives", description:"A nice set of TOMBO carving knives. Be careful!", location:"Causeway Bay", expiry_date:"2015-11-17", lister_email:"john.lok.djinn@gmail.com", lister_tel:"7250-9462", sms_notify:FALSE, confirm_posting:TRUE
src = File.join(Rails.root, "db/seed_images/carvingknives.png")
src_file = File.new(src)
Medium.create item_id: c.id, file_name: src_file

d = Item.create title:"Headphones", description:"A set of sennheiser HD-25 headphones. Excellent for DJ use.", location:"Causeway Bay", expiry_date:"2015-11-20", lister_email:"john.lok.djinn@gmail.com", lister_tel:"4037-0878", sms_notify:FALSE, confirm_posting:TRUE
src = File.join(Rails.root, "db/seed_images/headphones.png")
src_file = File.new(src)
Medium.create item_id: d.id, file_name: src_file

e = Item.create title:"CRKT Knife", description:"This knife has been used. Looks a bit ugly but can still kill people.", location:"Stanley", expiry_date:"2015-11-26", lister_email:"john.lok.djinn@gmail.com", lister_tel:"5510-2338", sms_notify:TRUE, confirm_posting:TRUE
src = File.join(Rails.root, "db/seed_images/knife.png")
src_file = File.new(src)
Medium.create item_id: e.id, file_name: src_file

f = Item.create title:"Letterset", description:"An old set of wooden letter blocks. Does not come with ink.", location:"Stanley", expiry_date:"2015-11-29", lister_email:"john.lok.djinn@gmail.com", lister_tel:"3625-3057", sms_notify:TRUE, confirm_posting:TRUE
src = File.join(Rails.root, "db/seed_images/letterset.png")
src_file = File.new(src)
Medium.create item_id: f.id, file_name: src_file

g = Item.create title:"Lubitel 2 - Medium Format Camera", description:"A nice little medium format camera. Light on features, but also light in weight. Have taken excellent photos with this camera.", location:"Central", expiry_date:"2015-12-02", lister_email:"john.lok.djinn@gmail.com", lister_tel:"5763-2600", sms_notify:TRUE, confirm_posting:TRUE
src = File.join(Rails.root, "db/seed_images/camera-medium-format.png")
src_file = File.new(src)
Medium.create item_id: g.id, file_name: src_file

h = Item.create title:"Carl Pencil Sharpener", description:"A pencil sharpener that has a dull blade. Should be good for decoration and retro freaks.", location:"Central", expiry_date:"2015-12-04", lister_email:"john.lok.djinn@gmail.com", lister_tel:"4901-4454", sms_notify:FALSE, confirm_posting:TRUE
src = File.join(Rails.root, "db/seed_images/pencil-sharpener.png")
src_file = File.new(src)
Medium.create item_id: h.id, file_name: src_file

i = Item.create title:"Stainless steel scissors", description:"A pair of antique scissors. Is a family heirloom.", location:"Tsim Sha Tsui", expiry_date:"2015-12-08", lister_email:"john.lok.djinn@gmail.com", lister_tel:"2518-7106", sms_notify:FALSE, confirm_posting:TRUE
src = File.join(Rails.root, "db/seed_images/scissors.png")
src_file = File.new(src)
Medium.create item_id: i.id, file_name: src_file

j = Item.create title:"Voice Recorder", description:"A voice recorder. Sound quality is excellent. Can record in PCM 24-bit quality. ", location:"Tsim Sha Tsui", expiry_date:"2015-12-11", lister_email:"john.lok.djinn@gmail.com", lister_tel:"7189-3502", sms_notify:FALSE, confirm_posting:TRUE
src = File.join(Rails.root, "db/seed_images/voice-recorder.png")
src_file = File.new(src)
Medium.create item_id: j.id, file_name: src_file