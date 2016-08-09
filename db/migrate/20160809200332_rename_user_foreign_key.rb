class RenameUserForeignKey < ActiveRecord::Migration
  def change
  	change_table :songs do |t|
  		t.rename :users_id, :user_id
  	end
  end
end
