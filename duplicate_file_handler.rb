class DuplicateFileHandler
  def initialize(folder)
    @folder = folder
  end

  def find_duplicates
    files = {}
    Dir.glob("#{@folder}/**/*").each do |item|
      next if File.directory?(item)
      file = File.read(item)
      if files.has_key?(file)
        files[file] << item
      else
        files[file] = [item]
      end
    end

    print_duplicates(files)
  end

  private

  def print_duplicates(files)
    files.each_value do |filenames|
      if filenames.length > 1
        puts '>> DUPLICATE FILES FOUND'
        filenames.each do |filename|
          puts filename
        end
      end
    end
  end
end

