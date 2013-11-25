class AddKarmaScoreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :karma_score, :integer
    add_index :users, :karma_score
  end
end
