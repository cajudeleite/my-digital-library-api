class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.string :title
      t.string :overview
      t.integer :film_id
      t.string :poster_path

      t.timestamps
    end
  end
end
