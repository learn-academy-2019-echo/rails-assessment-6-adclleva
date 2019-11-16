# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument
# and returns the appropriate version of "Hello, World" for the given language. The default should be English.
# Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'
def hello_world(code)
    if code == "es"
        "Hola Mundo"
    elsif code == "ko"
        "안녕 세상"
    elsif code == "ru"
        "Привет, мир"
    elsif code == "ja"
        "こんにちは世界"
    else
        "Hello World"
    end
end

puts hello_world("es")
puts hello_world("ko")
puts hello_world("ru")
puts hello_world("es")
puts hello_world("ja")

# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'
def assign_grade(score)
    if score <= 100 && score >= 90
        "A"
    elsif score < 90 && score >= 80
        "B"
    elsif score < 80 && score >= 70
        "C"
    elsif score < 70 && score >= 60
        "D"
    elsif score <= 50 && score >= 0
        "F"
    else 
        "Enter a valid score"
    end
end

puts assign_grade(96)
puts assign_grade(75)
puts assign_grade(2)

# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.
 
def assign_grade(score)
    if score <= 100 && score >= 90
        "A"
    elsif score < 90 && score >= 80
        "B"
    elsif score < 80 && score >= 70
        "C"
    elsif score < 70 && score >= 60
        "D"
    elsif score <= 50 && score >= 0
        "F"
    else 
        not_valid_score()
    end
end

def not_valid_score      
    begin
      raise 'invalid score'
     
    rescue   StandardError => e
        puts e 
        puts 'please enter a valid score'
    end    
end   

puts assign_grade(96)
puts assign_grade(75)
puts assign_grade(101)
puts assign_grade(-75)

# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - 
# and returns the number and the pluralized form of the noun, if necessary. 
# Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'
def pluralizer(number, noun) 
    words = number > 1 ? " #{number} #{noun}s": "#{number} #{noun}"
end

puts pluralizer(5, 'cat')
puts pluralizer(1, 'dog')


# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people,
# crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.
require 'set'

def pluralizer(number, noun) 
    irregular_pluarlizations = Set["sheep", "goose", "child", "person", "crossroads"]
    if irregular_pluarlizations.include?(noun)
      irregular_pluarlization()
    end

    words = number > 1 ? " #{number} #{noun}s": "#{number} #{noun}"
end

def irregular_pluarlization
    begin
        raise 'Invalid word'
       
      rescue  StandardError => e
          puts e 
          puts "you entered an irregular word to be pluralized, please try again"
          puts
      end   
end


puts pluralizer(5, 'cat')
puts pluralizer(1, 'dog')
puts pluralizer(1, 'sheep')
puts pluralizer(1, 'child')