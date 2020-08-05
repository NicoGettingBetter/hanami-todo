Hanami::Model.migration do
  change do
    create_table :tasks_comments do
      foreign_key :task_id, :tasks, on_delete: :cascade, null: false, type: 'uuid'
      foreign_key :comment_id, :comments, on_delete: :cascade, null: false, type: 'uuid'

      primary_key [:task_id, :comment_id]

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
