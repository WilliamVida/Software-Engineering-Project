class CreateAircrafts < ActiveRecord::Migration
  def change
    create_table :aircrafts do |t|
        t.string 'name'
        t.string 'role'
        t.string 'country'
        t.string 'year'
        # Add fields that let Rails automatically keep track
        # of when movies are added or modified:
        t.timestamps
    end
  end
end
