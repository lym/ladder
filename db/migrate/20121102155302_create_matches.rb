class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :challenger
      t.string :opponent
      t.datetime :match_date

      t.timestamps
    end
  end
end
