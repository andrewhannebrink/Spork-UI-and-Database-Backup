class CreateServings < ActiveRecord::Migration
  def change
    create_table :servings do |t|
      t.string :usdaId
      t.string :name
      t.string :group
      t.float :kcal
      t.float :protein
      t.float :carb
      t.float :fat
      t.float :vitA
      t.float :vitB1
      t.float :vitB2
      t.float :vitB3
      t.float :vitB5
      t.float :vitB6
      t.float :vitB6
      t.float :vitB9
      t.float :vitB12
      t.float :vitC
      t.float :vitD
      t.float :vitE
      t.float :fiber
      t.float :potassium
      t.float :calcium
      t.float :phosphorus
      t.float :magnesium
      t.float :manganese
      t.float :iron
      t.float :sodium
      t.float :copper
      t.float :zinc
      t.float :selenium
      t.float :fluoride

      t.timestamps
    end
  end
end
