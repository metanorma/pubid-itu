shared_examples "converts pubid to pubid" do
  it "converts pubid to pubid" do
    expect(subject.to_s).to eq(pubid)
  end
end

shared_examples "converts pubid to french pubid" do
  it "converts pubid to french pubid" do
    expect(subject.to_s(language: :fr)).to eq(pubid_fr)
  end
end

shared_examples "converts pubid to spanish pubid" do
  it "converts pubid to spanish pubid" do
    expect(subject.to_s(language: :es)).to eq(pubid_es)
  end
end

shared_examples "converts pubid to chinese pubid" do
  it "converts pubid to chinese pubid" do
    expect(subject.to_s(language: :zh)).to eq(pubid_zh)
  end
end

shared_examples "converts pubid to russian pubid" do
  it "converts pubid to russian pubid" do
    expect(subject.to_s(language: :ru)).to eq(pubid_ru)
  end
end

shared_examples "converts pubid to arabic pubid" do
  it "converts pubid to arabic pubid" do
    expect(subject.to_s(language: :ar)).to eq(pubid_ar)
  end
end

shared_examples "converts pubid to long pubid" do
  it "converts pubid to long pubid" do
    expect(subject.to_s(format: :long)).to eq(pubid_long)
  end
end

shared_examples "converts pubid to long french pubid" do
  it "converts pubid to long french pubid" do
    expect(subject.to_s(format: :long, language: :fr)).to eq(pubid_long_fr)
  end
end

shared_examples "converts pubid to long spanish pubid" do
  it "converts pubid to long spanish pubid" do
    expect(subject.to_s(format: :long, language: :es)).to eq(pubid_long_es)
  end
end

shared_examples "converts pubid to long chinese pubid" do
  it "converts pubid to long chinese pubid" do
    expect(subject.to_s(format: :long, language: :zh)).to eq(pubid_long_zh)
  end
end

shared_examples "converts pubid to long russian pubid" do
  it "converts pubid to long russian pubid" do
    expect(subject.to_s(format: :long, language: :ru)).to eq(pubid_long_ru)
  end
end

shared_examples "converts pubid to long arabic pubid" do
  it "converts pubid to long arabic pubid" do
    expect(subject.to_s(format: :long, language: :ar)).to eq(pubid_long_ar)
  end
end

shared_examples "converts pubid to pubid with type" do
  it "converts pubid to pubid" do
    expect(subject.to_s(with_type: true)).to eq(pubid_with_type)
  end
end

shared_examples "parse identifiers from file" do
  it "parse identifiers from file" do
    f = open("spec/fixtures/#{examples_file}")
    f.readlines.each do |pub_id|
      next if pub_id.match?("^#")

      pub_id = pub_id.split("#").first.strip.chomp
      expect do
        described_class.parse(pub_id)
      rescue Exception => failure
        raise Pubid::Core::Errors::ParseError,
              "couldn't parse #{pub_id}\n#{failure.message}"
      end.not_to raise_error

      expect(described_class.parse(pub_id).to_s.upcase).to eq(pub_id.upcase)
    end
  end
end
