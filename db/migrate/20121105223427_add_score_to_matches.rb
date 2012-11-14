class AddScoreToMatches < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.string :score
    end
  end
end
