class CreateProficiencies < ActiveRecord::Migration
  def change
  	create_table :proficiencies do |t|
  		t.integer :user_id
  		t.integer :skill_id
  		t.float :years_experience
  		t.integer :formal_education
  		t.timestamps
  	end

  	add_index(:proficiencies, :user_id)
  	add_index(:proficiencies, :skill_id)
  end
end
