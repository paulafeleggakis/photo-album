class FilePrinter
  def initialize(files)
    @files = files
  end

  def print_duplicates
    @files.each_value do |filenames|
      if filenames.length > 1
        puts '>> DUPLICATE FILES FOUND'
        filenames.each do |filename|
          puts filename
        end
      end
    end
  end
end

