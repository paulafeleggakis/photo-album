require 'spec_helper'
require_relative '../duplicate_file_handler.rb'

describe DuplicateFileHandler do
  context 'folder being handled exists' do
    let(:folder)  { './spec/support/test_album' }
    let(:duplicates_output) do
      ">> DUPLICATE FILES FOUND\n./spec/support/test_album/s-02141.jpg\n./spec/support/test_album/sunset.jpg\n"
    end

    subject { DuplicateFileHandler.new(folder) }

    it 'returns a list of duplicate file names with their corresponding locations' do
      expect{subject.find_duplicates}.to output(duplicates_output).to_stdout
    end
  end
end
