#encoding: ascii-8bit
require "./serving.rb"

class Parser
	
	#This function parses the food description files (FOOD_DES.txt & NUT_DATA.txt)
	def foodParse
		f1 = File.open("FOOD_DES.txt", :encoding => "ascii-8bit")
		
		servings = []
		f1.lines.each do |line|
			id = line[1,5]
			temp = line[16,line.size-1]
			name = temp[0,temp.index("~")]
			s = Serving.new(id, name)
			servings << s
		end

		#This maps the usda nutrient id"s to the nutrients that the application uses
		nutrientMap = { "208" => "kcal", 
			"203" => "protein",
			"205" => "carb",
			"204" => "fat",
			"318" => "vitA",
			"404" => "vitB1",
			"405" => "vitB2",
			"406" => "vitB3",
			"410" => "vitB5",
			"415" => "vitB6",
			"431" => "vitB9",
			"418" => "vitB12",
			"401" => "vitC",
			"326" => "vitD",
			"323" => "vitE",
			"291" => "fiber",
			"306" => "potassium",
			"301" => "calcium",
			"305" => "phosphorus",
			"304" => "magnesium",
			"315" => "manganese",
			"303" => "iron",
			"307" => "sodium",
			"312" => "copper",
			"309" => "zinc",
			"317" => "selenium",
			"313" => "fluoride"
		}
			
		f2 = File.open("NUT_DATA.txt", :encoding => "ascii-8bit")

		#Stores NUT_DATA.txt by segments pertaining to individual servings
	   f2arr = [""]
		curId = "01001"
		f2.lines.each do |line|
			curId2 = line[1,5]
			if curId2 != curId
				curId = curId2
				f2arr << line
			else
				f2arr[-1] += line
			end
		end	
		#Extract and assign nutrient data to the individual servings that were constructed in lines 10-16
		i = 0;
		f2arr.each do |section|
			section.lines.each do |line|
				if nutrientMap[line[9,3]] != nil
					meth = servings[i].method(nutrientMap[line[9,3]]+"=")
					temp = line[14, line.size-1]
					temp2 = temp[0, temp.index("^")]
					meth.call(temp2)
				end
			end
			#servings[i].debugger
			i = i + 1
		end
		return servings
	end

	#Write the passed array as text that will go into seeds.db
	def fileWriter(servings)
		f = File.new("out.txt", "w")
		servings.each do |s|
			lineOut = "Serving.create(usdaId: \"" + s.usdaId + "\", name: \"" + s.name.gsub('"','\"') + "\", group: \"" + s.group + "\", kcal: " + s.kcal.to_s + ", protein: " + s.protein.to_s + ", carb: " + s.carb.to_s + ", fat: " + s.fat.to_s + ", vitA: " + s.vitA.to_s + ", vitB1: " + s.vitB1.to_s + ", vitB2: " + s.vitB2.to_s + ", vitB3: " + s.vitB3.to_s + ", vitB5: " + s.vitB5.to_s + ", vitB6: " + s.vitB6.to_s + ", vitB9: " + s.vitB9.to_s + ", vitB12: " + s.vitB12.to_s + ", vitC: " + s.vitC.to_s + ", vitD: " + s.vitD.to_s + ", vitE: " + s.vitE.to_s + ", fiber: " + s.fiber.to_s + ", potassium: " + s.potassium.to_s + ", calcium: " + s.calcium.to_s + ", phosphorus: " + s.phosphorus.to_s + ", magnesium: " + s.magnesium.to_s + ", manganese: " + s.manganese.to_s + ", iron: " + s.iron.to_s + ", sodium: " + s.sodium.to_s + ", copper: " + s.copper.to_s + ", zinc: " + s.zinc.to_s + ", selenium: " + s.selenium.to_s + ",fluoride: " + s.fluoride.to_s + ")"
			f.puts(lineOut)
		end
	end
end

def main
	#Run the parser function
	p = Parser.new
	servings = p.foodParse
	p.fileWriter(servings)
end

main
