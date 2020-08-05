Hanami::Model.migration do
  change do
    create_table :schedules_comments do
      foreign_key :schedule_id, :schedules, on_delete: :cascade, null: false, type: 'uuid'
      foreign_key :comment_id, :comments, on_delete: :cascade, null: false, type: 'uuid'

      primary_key [:schedule_id, :comment_id]

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
