unless Person.exists?
  5.times do
    Person.create!(name: Faker::Name.name)
  end
end

Person.find_each do |person|
  rand(1..3).times do
    Dog.find_or_create_by(name: Faker::Creature::Dog.name, person_id: person.id)
  end
end