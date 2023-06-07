require_relative '../sub_strings'

describe '#substrings' do
  context 'when a phrase contains only one instance of a dictionary word' do
    it "adds only 1 to the word's tally" do
      phrase = 'This is a very nice phrase.'
      dic = ['very']
      expect(substrings(phrase, dic)['very']).to eq(1)
    end
  end
  context 'when a phrase contains multiple instances of a dictionary word' do
    it "represents the correct number of word's instances when tallied" do
      phrase = 'This is a very very very nice phrase.'
      dic = ['very']
      expect(substrings(phrase, dic)['very']).to eq(3)
    end
  end
  context 'when given a phrase as an empty string' do
    it 'returns an empty hash' do
      empty_str = ''
      dic = ['the', 'and', 'because']
      expect(substrings(empty_str, dic)).to eq({})
    end
  end
  context 'when given an empty dictionary' do
    it 'returns an empty hash' do
      phrase = "This is a phrase."
      empty_dic = []
      expect(substrings(phrase, empty_dic)).to eq({})
    end
  end
end