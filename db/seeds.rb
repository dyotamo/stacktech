require "faker"

languages = [
  "Python",
  "Ruby",
  "Java",
  "C",
  "Rust",
].each do |tool|
  ProgrammingLanguage.create(name: tool)
end

utilities = [
  "Google Analytics",
  "Amazon CloudFront",
  "Framer",
  "App Annie",
  "HackerOne",
  "Bugcrowd",
].each do |tool|
  Utility.create(name: tool)
end

devops = [
  "Kubernetes",
  "Docker",
  "Bamboo",
  "Jenkins",
  "Git",
  "Gradle",
].each do |tool|
  Devop.create(name: tool)
end

bussiness_tools = [
  "Sentry",
  "G Suite",
  "Zendesk",
  "Asana",
  "Balsamiq",
  "OneLogin",
  "Taskdesk",
].each do |tool|
  BusinessTool.create(name: tool)
end

50.times do
  User.create(name: Faker::Company.name, email: Faker::Internet.email,
              about: Faker::Quote.yoda, password: "[FILTERED]",
              password_confirmation: "[FILTERED]")
end
