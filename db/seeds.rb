# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
khoa = User.create!(
  name: 'Khoa',
  email: 'duonganhkhoa95@gmail.com',
  password: 'KhoaUQ95'
  )

pieter = User.create!(
  name: 'Pieter',
  email: 'pieter_ziggu@gmail.com',
  password: 'KhoaUQ95'
  )

tien = User.create!(
  name: 'Tien',
  email: 'tvtien@gmail.com',
  password: 'KhoaUQ95'
  )
