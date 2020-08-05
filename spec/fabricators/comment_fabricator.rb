Fabricator(:comment) do
  text { FFaker::Name.name }
end
