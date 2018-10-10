class FileHandler
  def initialize(folder)
    @folder = folder
  end

  def find_duplicates
    files = {}
    Dir.glob("#{@folder}/**/*").each do |item|
      next if File.directory?(item)
      file = File.read(item)
      if files.key?(file)
        files[file] << item
      else
        files[file] = [item]
      end
    end
    files
  end
end

