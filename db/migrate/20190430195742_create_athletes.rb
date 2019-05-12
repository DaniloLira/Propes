class CreateAthletes < ActiveRecord::Migration[5.2]
  def change
    create_table :athletes do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :cpf
      t.date :date_birth
      t.integer :age
      t.string :gender
      t.string :civil_status
      t.string :degree_education
      t.string :profession
      t.string :address
      t.string :city
      t.string :neighborhood
      t.string :state
      t.integer :cep
      t.integer :home_phone
      t.integer :cell_phone
      t.string :modality
      t.string :position
      t.string :dum
      t.string :dlm
      t.string :smoker
      t.string :alcoholism
      t.string :sah
      t.string :diabetes
      t.string :cardio_deseases
      t.string :exercise_practice
      t.string :fami_alcoholism
      t.string :fami_sah
      t.string :fami_diabetes
      t.string :fami_cardio
      t.string :others
      t.references :users, foreign_key: true 
      
      t.timestamps
    end
  end
end
