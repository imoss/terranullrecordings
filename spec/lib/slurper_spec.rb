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
      file.stub(:input).and_return(input)
    end

    it 'should create 2 news items' do
      subject.count.should == 2

      subject.first.title.should == 'TERNUL004 Announced'
      subject.first.date_text.should == 'June 24th, 2014'
      subject.first.featured_image.should == '/assets/TERNUL_art_004_small.jpg'
      subject.first.content.should == 'Listen <a href="/#/releases/nyctophobia-the-remixes-ep">here</a>'

      subject.last.title.should == 'NullCast 003 Launches'
      subject.last.date_text.should == 'June 17th, 2014'
      subject.last.featured_image.should == '/assets/nullcast003-art-small.jpg'
      subject.last.content.should == 'The third episode: now available'
    end
  end
end
