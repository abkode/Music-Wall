class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      # t.has_many :upvote	
      t.string :name
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end
