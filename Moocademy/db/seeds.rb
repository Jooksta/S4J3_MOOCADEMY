# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
    course = Course.create!(title: Faker::GitClass.title, content: Faker::GitClass.quote)
  end

10.times do
    lesson = Lesson.create!(course_id: Faker::Number.between(1,10), title: Faker::GitPush.title, body: Faker::HowToDo.quote)
end