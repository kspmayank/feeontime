# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@user = User.create(username: 'admin', password_hash: '$2a$10$2NUcRsyrGTMr8aUWOuxml.g1Yr12FJ47PECv73HfgYH.thJWn.sIm')