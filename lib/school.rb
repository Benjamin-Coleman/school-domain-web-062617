require 'pry'

class School

	attr_accessor :name, :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(student_name, grade)
		if !@roster[grade]
			@roster[grade] = []
			@roster[grade] << student_name

		else
			@roster[grade] << student_name
		end
	end

	def grade(grade)
		@roster[grade]
	end

	# def sort
	# 	@roster.map do |grade, students|
	# 		students.sort!{|a,b| a <=> b}
	# 	end
	# end

	def sort 
		sorted_hash = {}
		@roster.each do |grade, students|
			sorted_hash[grade] = students.sort{|a,b| a <=> b}
		end
		sorted_hash
	end

end

# cooley_high = School.new("Cooley High")

# cooley_high.add_student("Ben", 6)
# cooley_high.add_student("Dan", 8)
# cooley_high.add_student("Chad", 8)
