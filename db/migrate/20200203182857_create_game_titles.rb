class CreateGameTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :game_titles do |t|
      t.string :name

      t.timestamps
    end

    add_index :game_titles, :name, unique: true
  end
end
