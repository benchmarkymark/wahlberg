class CreateProjectUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :project_users do |t|
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps

      t.index [:project_id, :user_id], unique: true
    end
  end
end
