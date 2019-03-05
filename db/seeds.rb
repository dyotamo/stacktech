languages = [
    "Python",
    "Ruby",
    "Java",
    "C",
    "Rust"
].each do |tool|
    ProgrammingLanguage.create(name: tool)
end

utilities = [
    "Google Analytics",
    "Amazon CloudFront",
    "Framer",
    "App Annie",
    "HackerOne",
    "Bugcrowd"
].each do |tool|
    Utility.create(name: tool)
end

bussiness_tools = [
    "Sentry",
    "G Suite",
    "Zendesk",
    "Asana",
    "Balsamiq",
    "OneLogin",
    "Taskdesk"
].each do |tool|
    BusinessTool.create(name: tool)
end
