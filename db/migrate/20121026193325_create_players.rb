class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.decimal :amount_paid
      t.decimal :balance
      t.integer :ladder_rank

      t.timestamps
    end
  end
end
