require 'faker'

puts 'Cleaning database...'
User.destroy_all
Event.destroy_all
EventAttendance.destroy_all

puts 'Creating team members...'
14.times do |i|
  letter = ('a'..'z').to_a[i]
  department = User::DEPARTMENTS[0] if (i < 2)
  department = User::DEPARTMENTS[1] if (1 < i && i < 5)
  department = User::DEPARTMENTS[2] if (4 < i && i < 8)
  department = User::DEPARTMENTS[3] if (7 < i)
  user = User.new(
    email: "#{letter}@octagon-global.com",
    password: '111111',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone: "078#{rand(2593698..9593698)}",
    role: 'team',
    department: department,
    position: department,
    linkedin: "https://www.linkedin.com/in/fs14",
  )
  # avatar = File.open("app/assets/images/user#{i + 1}_avatar.jpg")
  # user.avatar.attach(io: avatar, filename: user.first_name.to_s, content_type: 'image/jpg')
  user.save!
end

puts 'Done!'
