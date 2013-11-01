# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.delete_all
User.delete_all
Classroom.delete_all

course1 = Course.create!( course_code: "WDI", course_name: "Web Development Immersive", description: "Full stack web developer using Ruby", price: "8000", space: "18", start_date: "20th Dec 2013", end_date: "30th Jan 2014", start_time: "9:00 AM", end_time: "5:00 PM" )
course2 = Course.create!( course_code: "PDN", course_name: "Production Design", description: "Designing good procucts", price: "4500", space: "15", start_date: "20th Nov 2013", end_date: "30th Jan 2014", start_time: "6:00 PM", end_time: "9:00 PM" )
course3 = Course.create!( course_code: "UX", course_name: "User Experience", description: "Improving user experience on websites", price: "50000", space: "16", start_date: "10th Nov 2013", end_date: "22nd Dec 2013", start_time: "6:00 PM", end_time: "9:00 PM" )

user1 = User.create!( role: "admin", first_name: "matt", last_name: "cynammon", dob: "20-10-1985", email: "matt.cynammon@ga.com", image: "http://www.kweekweek.com/assets/matt_cynamon-1bca2dac1ad153c23112a023ff00ae47.png", phone: "074050918123", password: '1234')
user2 = User.create!( role: "instructor", first_name: "gerry", last_name: "mathe", dob: "20-10-1985", email: "gerry.mathe@ga.com", image: "http://photos2.meetupstatic.com/photos/member/5/a/6/6/member_28223142.jpeg", phone: "074050918123", password: '1234')
user3 = User.create!( role: "staff", first_name: "Ggrdon", last_name: "macrae", dob: "19-02-1988", email: "gordon.macrae@ga.com", image: "http://m.c.lnkd.licdn.com/mpr/mpr/shrink_80_80/p/4/000/149/194/00d693b.jpg", phone: "078050519723", password: '1234')

classroom1 = Classroom.create!( class_name: "classroom A", class_space: "25" )
classroom2 = Classroom.create!( class_name: "classrooom B", class_space: "25" )


course1.users << user1 << user2