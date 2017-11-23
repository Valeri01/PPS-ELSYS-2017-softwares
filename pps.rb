require 'csv'
 require 'matrix'
 
mat1 = "./matrix1.csv"
mat2 = "./matrix2.csv"
csv1 = Array.new
csv2 = Array.new
csv1_red = 0
csv1_kolona = 0
csv2_red = 0
csv2_kolona = 0
 
 CSV.foreach(mat1) do |rows|
 	csv1 << rows.map(&:to_i)
 	csv1_red =+ 1
 	csv1_kolona = rows.size
 end
 
 CSV.foreach(mat2) do |rows|
 	csv2 << rows.map(&:to_i)
 	csv2_red =+ 1
 	csv2_kolona = rows.size
 end
 
 
 if csv2_red != csv1_kolona
 		puts "undefined"
 	else
 		otgovor1 = (Matrix.rows(csv1) * Matrix.rows(csv2))
 		otgovor2 = otgovor1.map {|ch| ch = -ch}.transpose
 	
 		if otgovor2 != otgovor1
			puts "false"
 		else
 			puts "true"
 		end
 	end
 	
 	
