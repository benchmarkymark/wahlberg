class AddGithubSyncedAtToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :github_synced_at, :timestamp
  end
end
