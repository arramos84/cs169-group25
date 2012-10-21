class CreateSurvey < ActiveRecord::Migration
  def change
    create_table :survey do |t|
      t.integer :ei
      t.integer :ns
      t.integer :ft
      t.integer :jp
      t.string :type

      t.timestamps
    end
  end
end
