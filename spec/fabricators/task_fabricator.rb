Fabricator(:task) do
  title { FFaker::Name.name }
  description { FFaker::Name.name }
end
