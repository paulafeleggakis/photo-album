require_relative 'file_handler.rb'
require_relative 'file_printer.rb'

if ARGV.length < 1
  puts "Usage:  A file directory must be specified as an argument"
  exit
elsif ARGV.length > 1
  puts "Usage: Only a single file directory can be specified as an argument"
  exit
end

folder = ARGV[0]

files = FileHandler.new(folder).find_duplicates
FilePrinter.new(files).print_duplicates



