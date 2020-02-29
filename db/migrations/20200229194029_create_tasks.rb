Hanami::Model.migration do
  change do
    create_table :tasks do
      primary_key :id, 'uuid', null: false, default: Hanami::Model::Sql.function(:uuid_generate_v4)
      foreign_key :schedule_id, :schedules, on_delete: :cascade, null: false, type: 'uuid'
      column :title, String, null: false
      column :description, String, size: 1024
      column :completed, FalseClass, default: false
      column :estimation, Float

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
