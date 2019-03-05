# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = [
    "Application and Data",
    "Utilities",
    "DevOps",
    "Business Tools"
].each do |category|
    Category.create(name: category)
end

app_and_data = [
    "Python",
    "nginx",
    "MySQL",
    "Amazon S3",
    "Memcached",
    "Rust",
].each do |tool|
    Tool.create(name: tool, category: Category.find_by(name: "Application and Data"))
end

utilities = [
    "Google Analytics",
    "Amazon CloudFront",
    "Framer",
    "App Annie",
    "HackerOne",
    "Bugcrowd"
].each do |tool|
    Tool.create(name: tool, category: Category.find_by(name: "Utilities"))
end

dev_ops = [
    "Sentry",
    "G Suite",
    "Zendesk",
    "Asana",
    "Balsamiq",
    "OneLogin",
    "Taskdesk"
].each do |tool|
    Tool.create(name: tool, category: Category.find_by(name: "DevOps"))
end