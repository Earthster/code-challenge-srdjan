FactoryBot.define do
  factory :invitation do
    cycle

    invitee_name { Faker::Name.name }
    email { Faker::Internet.email }
    message { Faker::Markdown.emphasis }
  end
end
