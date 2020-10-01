class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.resources :user
      t.resources :notebook

      t.timestamps
    end
  end
end
