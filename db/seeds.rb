require 'faker'

# create a few users
User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com', :password => 'password'
5.times do
  User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password'
end

# create a few technical skills
computer_skills = %w(Ruby Sinatra Rails JavaScript jQuery HTML CSS)
computer_skills.each do |skill|
  Skill.create :name => skill, :context => 'technical'
end

# create a few creative skills
design_skills = %w(Photoshop Illustrator Responsive-Design)
design_skills.each do |skill|
  Skill.create :name => skill, :context => 'creative'
end

# TODO: create associations between users and skills
Proficiency.create(user_id: 1, skill_id: 1, years_experience: 0.5, formal_education: 1)
Proficiency.create(user_id: 1, skill_id: 2, years_experience: 1, formal_education: 0)
Proficiency.create(user_id: 1, skill_id: 3, years_experience: 2, formal_education: 1)
Proficiency.create(user_id: 1, skill_id: 4, years_experience: 2.5, formal_education: 0)

Proficiency.create(user_id: 2, skill_id: 8, years_experience: 3, formal_education: 1)
Proficiency.create(user_id: 2, skill_id: 9, years_experience: 3, formal_education: 0)
Proficiency.create(user_id: 2, skill_id: 10, years_experience: 0, formal_education: 0)

Proficiency.create(user_id: 3, skill_id: 1, years_experience: 1, formal_education: 1)
Proficiency.create(user_id: 3, skill_id: 10, years_experience: 2, formal_education: 1)

Proficiency.create(user_id: 4, skill_id: 1, years_experience: 1, formal_education: 0)
