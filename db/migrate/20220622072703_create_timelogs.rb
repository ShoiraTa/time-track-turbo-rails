class CreateTimelogs < ActiveRecord::Migration[7.0]
  def change
    create_table :timelogs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true
      t.integer :minutes
      t.date :date

      t.timestamps
    end
  end
end
