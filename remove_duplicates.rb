require_relative 'duplicate_file_handler.rb'

if ARGV.length < 1
  puts "Usage:  A file directory must be specified as an argument"
  exit
elsif ARGV.length > 1
  puts "Usage: Only a single file directory can be specified as an argument"
  exit
end

folder = ARGV[0]

DuplicateFileHandler.new(folder).find_duplicates



