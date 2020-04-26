require "java"

class Sample
  puts 'class load'

  java_signature 'public static void main(String[] args)'
  def self.main args
    puts "ARGS EACH"
    args.each_with_index do |arg, index|
      puts "INDEX: #{index}, ARG: #{arg}"
    end
   # puts 'hello'
  end
end