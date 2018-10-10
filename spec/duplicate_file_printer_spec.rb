require 'spec_helper'
require_relative '../duplicate_file_printer.rb'

describe DuplicateFilePrinter do
  context 'there are duplicate files to print' do
    let(:files) do
      {
        File.read('./spec/support/test_album/sunset.jpg') =>
        [
          './spec/support/test_album/s-02141.jpg',
          './spec/support/test_album/sunset.jpg'
        ],
        File.read('./spec/support/test_album/s06288.jpg') =>
        [
          './spec/support/test_album/s06288.jpg'
        ],
        File.read('./spec/support/test_album/test/mew.jpg') =>
        [
          './spec/support/test_album/test/mew.jpg'
        ]
      }
    end

    let(:duplicates_output) do
      ">> DUPLICATE FILES FOUND\n./spec/support/test_album/s-02141.jpg\n./spec/support/test_album/sunset.jpg\n"
    end

    subject { DuplicateFilePrinter.new(files) }

    it 'outputs a list of duplicate file names with their path' do
      expect{subject.print_duplicates}.to output(duplicates_output).to_stdout
    end
  end
end
