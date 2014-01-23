#encoding: ascii-8bit
#This defines the serving class
class Serving

	def initialize(usdaId, name)
		@usdaId = usdaId
		@name = name
		@group = 'group'
		@kcal = 0
		@protein = 0
		@carb = 0
		@fat = 0
		@vitA = 0
		@vitB1 = 0
		@vitB2 = 0
		@vitB3 = 0
		@vitB5 = 0
		@vitB6 = 0
		@vitB9 = 0
		@vitB12 = 0
		@vitC = 0
		@vitD = 0
		@vitE = 0
		@fiber = 0
		@potassium = 0
		@calcium = 0
		@phosphorus = 0
		@magnesium = 0
		@manganese = 0
		@iron = 0
		@sodium = 0
		@copper = 0
		@zinc = 0
		@selenium = 0
		@fluoride = 0
	end
	
	#Automatically create getter and setter methods for each instance variable
	attr :usdaId, true
	attr :name, true
	attr :group, true
	attr :kcal, true
	attr :protein, true
	attr :carb, true
	attr :fat, true
	attr :vitA, true
	attr :vitB1, true
	attr :vitB2, true
	attr :vitB3, true
	attr :vitB5, true
	attr :vitB6, true
	attr :vitB9, true
	attr :vitB12, true
	attr :vitC, true
	attr :vitD, true
	attr :vitE, true
	attr :fiber, true
	attr :potassium, true
	attr :calcium, true
	attr :phosphorus, true
	attr :magnesium, true
	attr :manganese, true
	attr :iron, true
	attr :sodium, true
	attr :copper, true
	attr :zinc, true
	attr :selenium, true
	attr :fluoride, true

	def debugger
		puts '################################################################'
		puts self.usdaId
		puts self.name
		puts 'group = ' + self.group
		puts 'kcal = ' + self.kcal.to_s
		puts 'protein = ' + self.protein.to_s
		puts 'carb = ' + self.carb.to_s
		puts 'fat = ' + self.fat.to_s
		puts 'vitA = ' + self.vitA.to_s
		puts 'vitB1 = ' + self.vitB1.to_s
		puts 'vitB2 = ' + self.vitB2.to_s
		puts 'vitB3 = ' + self.vitB3.to_s
		puts 'vitB5 = ' + self.vitB5.to_s
		puts 'vitB6 = ' + self.vitB6.to_s
		puts 'vitB9 = ' + self.vitB9.to_s
		puts 'vitB12 = ' + self.vitB12.to_s
		puts 'vitC = ' + self.vitC.to_s
		puts 'vitD = ' + self.vitD.to_s
		puts 'vitE = ' + self.vitE.to_s
		puts 'fiber = ' + self.fiber.to_s
		puts 'potassium = ' + self.potassium.to_s
		puts 'calcium = ' + self.calcium.to_s
		puts 'phosphorus = ' + self.phosphorus.to_s
		puts 'magnesium = ' + self.magnesium.to_s
		puts 'manganese = ' + self.manganese.to_s
		puts 'iron = ' + self.iron.to_s
		puts 'sodium = ' + self.sodium.to_s
		puts 'copper = ' + self.copper.to_s
		puts 'zinc = ' + self.zinc.to_s
		puts 'selenium = ' + self.selenium.to_s
		puts 'fluoride = ' + self.fluoride.to_s
		

	end
end
