require 'pry'

class School

  attr_accessor :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(num)
    roster[num]
  end
# ahhh!
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end


end

#   #sort
#     is able to sort the students (FAILED - 6)
#
# Failures:
#
#   1) School ::new has an empty roster when initialized
#      Failure/Error: @school = School.new("Test School")
#
#      NameError:
#        uninitialized constant School
#      # ./spec/student_spec.rb:5:in `block (2 levels) in <top (required)>'
#
#   2) School #add_student is able to add a student
#      Failure/Error: @school = School.new("Test School")
#
#      NameError:
#        uninitialized constant School
#      # ./spec/student_spec.rb:5:in `block (2 levels) in <top (required)>'
#
#   3) School #add_student is able to add multiple students to a class (grade)
#      Failure/Error: @school = School.new("Test School")
#
#      NameError:
#        uninitialized constant School
#      # ./spec/student_spec.rb:5:in `block (2 levels) in <top (required)>'
#
#   4) School #add_student is able to add students to different grades
#      Failure/Error: @school = School.new("Test School")
#
#      NameError:
#        uninitialized constant School
#      # ./spec/student_spec.rb:5:in `block (2 levels) in <top (required)>'
#
#   5) School #grade is able to retreive students from a grade
#      Failure/Error: @school = School.new("Test School")
#
#      NameError:
#        uninitialized constant School
#      # ./spec/student_spec.rb:5:in `block (2 levels) in <top (required)>'
#
#   6) School #sort is able to sort the students
#      Failure/Error: @school = School.new("Test School")
#
#      NameError:
#        uninitialized constant School
#      # ./spec/student_spec.rb:5:in `block (2 levels) in <top (required)>'
#
# Finished in 0.0036 seconds (files took 0.16131 seconds to load)
# 6 examples, 6 failures
#
# Failed examples:
#  code here!
