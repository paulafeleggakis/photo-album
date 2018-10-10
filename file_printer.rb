class FilePrinter
  def initialize(files)
    @files = files
  end

  def print_duplicates
    duplicate_count = []
    @files.each_value do |filenames|
      duplicate_count << filenames.length
      if filenames.length > 1
        puts '>> DUPLICATE FILES FOUND'
        filenames.each do |filename|
          puts filename
        end
      end
    end

    if duplicate_count.none? {|a| a > 1}
      puts 'There are no duplicate files in this directory'
    end
  end
end
