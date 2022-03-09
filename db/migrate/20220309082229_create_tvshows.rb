class CreateTvshows < ActiveRecord::Migration[6.0]
  def change
    create_table :tvshows do |t|
      t.string :title
      t.string :season
      t.string :overview
      t.integer :tvshow_id
      t.string :poster_path

      t.timestamps
    end
  end
end
