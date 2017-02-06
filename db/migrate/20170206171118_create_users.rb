class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :year_of_study
      t.string :brief_intro
      t.string :achievements
      t.string :rgsoc_reason
      t.string :projects
      t.string :languages
      t.string :fav_food

      t.timestamps
    end
  end
end
