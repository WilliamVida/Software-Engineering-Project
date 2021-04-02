class CreateAircrafts < ActiveRecord::Migration
  def change
    create_table :aircrafts do |t|
        t.string 'name'
        t.string 'role'
        t.string 'country'
        t.string 'year'
        t.timestamps
    end
  end
end
