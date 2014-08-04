require 'spec_helper'

describe Slurper::File do
  describe '.import' do
    let(:input) do
      <<-eos
        title: TERNUL004 Announced|
        date_text: June 24th, 2014|
        featured_image: /assets/TERNUL_art_004_small.jpg|
        content:
        Listen <a href="/#/releases/nyctophobia-the-remixes-ep">here</a>
        ****
        title: NullCast 003 Launches|
        date_text: June 17th, 2014|
        featured_image: /assets/nullcast003-art-small.jpg|
        content:
        The third episode: now available
      eos
    end
    let(:file) { Slurper::File.new('news_item') }

    subject { file.import }

    before do
      allow(file).to receive(:input).and_return(input)
    end

    it 'should create 2 news items' do
      expect(subject.count).to eq(2)

      expect(subject.last.title).to eq('TERNUL004 Announced')
      expect(subject.last.date_text).to eq('June 24th, 2014')
      expect(subject.last.featured_image).to eq('/assets/TERNUL_art_004_small.jpg')
      expect(subject.last.content).to eq('Listen <a href="/#/releases/nyctophobia-the-remixes-ep">here</a>')

      expect(subject.first.title).to eq('NullCast 003 Launches')
      expect(subject.first.date_text).to eq('June 17th, 2014')
      expect(subject.first.featured_image).to eq('/assets/nullcast003-art-small.jpg')
      expect(subject.first.content).to eq('The third episode: now available')
    end
  end
end
