require 'faker'

# ユーザーデータの生成
10.times do
  User.create!(
    email: Faker::Internet.email,
    password: 'password',
  )
end

# タスクデータの生成
50.times do
  Task.create!(
    title: Faker::Lorem.sentence(word_count: 3),
    description: Faker::Lorem.sentence(word_count: 10),
    due_date: Faker::Date.forward(days: 30),
    status: ['yet', 'done'].sample,
    user_id: User.pluck(:id).sample
  )
end
