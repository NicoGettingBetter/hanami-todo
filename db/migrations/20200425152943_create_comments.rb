Hanami::Model.migration do
  change do
    create_table :comments do
      primary_key :id, 'uuid', null: false, default: Hanami::Model::Sql.function(:uuid_generate_v4)

      column :text, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
