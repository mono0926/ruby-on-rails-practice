require 'rspec/rails'

describe String do
  describe '#<<' do
    example "文字の追加" do
      s = "ABC"
      s << "D"
      expect(s.size).to eq(4)
    end
    example "nilは追加出来ない" do
      s = "ABC"
      expect { s << nil }.to raise_error(TypeError)
    end
  end
end