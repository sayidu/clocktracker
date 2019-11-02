# frozen_string_literal: true

# The data can then be loaded with the rails dbseed command (or created alongside the database with dbsetup).
#
# Examples
#
#   movies = Movie.create([{ name 'Star Wars' }, { name 'Lord of the Rings' }])
#   Character.create(name 'Luke', movie movies.first)

User.create(
  first_name: 'Shalom',
  last_name: 'Ayidu',
  email: 'shalomayidu@gmail.com',
  password: 'password'
)

Organization.create(
  name: 'Himamas'
)

5.times do
  TimeLog.create(
    comments: "Arrived late due to doctor's appointment",
    week_day: TimeLog::WEEK_DAYS.sample,
    purpose: TimeLog::MEAL_TIMES.sample,
    time_in: Date.current,
    time_out: Date.current + 12.hours,
    user_id: User.last.id,
    organization_id: Organization.last.id
  )
end
