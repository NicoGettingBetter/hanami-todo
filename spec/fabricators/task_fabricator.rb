Fabricator(:task) do
  title { FFaker::Name.name }
  schedule
end
