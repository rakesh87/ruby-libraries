require 'spec_helper'

# This is a sample spec file, showing an initial effort to document a Ruby
# class or module (in this case, the Hash class) based on the documentation
# at http://ruby-doc.org/.
describe Hash do

  describe '#new' do

    context "when called with no arguments" do
      it "should return the empty hash" do
        hash = Hash.new
        expect(hash == {}).to eq true
      end
    end

    context "when called with an integer as an argument" do
      # let(:hash) { Hash.new(3) }
      hash = Hash.new
      hash = {"a" => "curly", "b" => "larry", "c" => "moe"}

      it "should have length equal to the argument" do
        expect(hash.length).to eq 3
      end

    end

  end

  describe "hashthing & other_hashthing" do
    let(:hashthing) { [1, 1, 3, 5, 'foo'] }
    let(:other_hashthing) { [1, 2, 3, 'foo'] }

    it "should return the set intersection of the two hashes" do
      expect(hashthing & other_hashthing).to eq [1, 3, 'foo']
    end
  end
end
