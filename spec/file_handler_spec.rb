require 'spec_helper'
require_relative '../file_handler.rb'

describe FileHandler do
  context 'folder being handled exists' do
    let(:folder)  { './spec/support/test_album' }
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

    subject { FileHandler.new(folder) }

    it 'returns files in folder as a hash of file content and file name' do
      expect(subject.find_duplicates).to include(files)
    end
  end
end
