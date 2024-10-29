shared_examples "converts pubid to pubid" do
  it "converts pubid to pubid" do
    expect(subject.to_s).to eq(pubid)
  end
end

shared_examples "converts pubid to english pubid" do
  it "converts pubid to english pubid" do
    subject.root.language = "en"
    expect(subject.to_s).to eq(pubid_en)
  end
end

shared_examples "converts pubid to english pubid with language" do
  it "converts pubid to english pubid with language" do
    subject.root.language = "en"
    expect(subject.to_s(with_language: true)).to eq(pubid_en_with_lang)
  end
end

shared_examples "converts pubid to french pubid" do
  it "converts pubid to french pubid" do
    subject.root.language = "fr"
    expect(subject.to_s).to eq(pubid_fr)
  end
end

shared_examples "converts pubid to spanish pubid" do
  it "converts pubid to spanish pubid" do
    subject.root.language = "es"
    expect(subject.to_s).to eq(pubid_es)
  end
end

shared_examples "converts pubid to chinese pubid" do
  it "converts pubid to chinese pubid" do
    subject.root.language = "zh"
    expect(subject.to_s).to eq(pubid_zh)
  end
end

shared_examples "converts pubid to russian pubid" do
  it "converts pubid to russian pubid" do
    subject.root.language = "ru"
    expect(subject.to_s).to eq(pubid_ru)
  end
end

shared_examples "converts pubid to arabic pubid" do
  it "converts pubid to arabic pubid" do
    subject.root.language = "ar"
    expect(subject.to_s).to eq(pubid_ar)
  end
end

shared_examples "converts pubid to long pubid" do
  it "converts pubid to long pubid" do
    expect(subject.to_s(format: :long)).to eq(pubid_long)
  end
end

shared_examples "converts pubid to long english pubid" do
  it "converts pubid to long english pubid" do
    subject.root.language = "en"
    expect(subject.to_s(format: :long)).to eq(pubid_en_long)
  end
end

shared_examples "converts pubid to long french pubid" do
  it "converts pubid to long french pubid" do
    subject.root.language = "fr"
    expect(subject.to_s(format: :long)).to eq(pubid_long_fr)
  end
end

shared_examples "converts pubid to long spanish pubid" do
  it "converts pubid to long spanish pubid" do
    subject.root.language = "es"
    expect(subject.to_s(format: :long)).to eq(pubid_long_es)
  end
end

shared_examples "converts pubid to long chinese pubid" do
  it "converts pubid to long chinese pubid" do
    subject.root.language = "zh"
    expect(subject.to_s(format: :long)).to eq(pubid_long_zh)
  end
end

shared_examples "converts pubid to long russian pubid" do
  it "converts pubid to long russian pubid" do
    subject.root.language = "ru"
    expect(subject.to_s(format: :long)).to eq(pubid_long_ru)
  end
end

shared_examples "converts pubid to long arabic pubid" do
  it "converts pubid to long arabic pubid" do
    subject.root.language = "ar"
    expect(subject.to_s(format: :long)).to eq(pubid_long_ar)
  end
end

shared_examples "converts pubid to pubid with type" do
  it "converts pubid to pubid" do
    expect(subject.to_s(with_type: true)).to eq(pubid_with_type)
  end
end

shared_examples "converts pubid to pubid with language" do
  it "converts pubid to pubid with language" do
    expect(subject.to_s(with_language: true)).to eq(pubid_with_lang)
  end
end

shared_examples "converts pubid to long english pubid with language" do
  it "converts pubid to long english pubid with language" do
    subject.root.language = "en"
    expect(subject.to_s(format: :long, with_language: true)).to eq(pubid_en_long_with_language)
  end
end

shared_examples "converts pubid to french pubid with language" do
  it "converts pubid to french pubid with language" do
    subject.root.language = "fr"
    expect(subject.to_s(with_language: true)).to eq(pubid_fr_with_lang)
  end
end

shared_examples "converts pubid to spanish pubid with language" do
  it "converts pubid to spanish pubid with language" do
    subject.root.language = "es"
    expect(subject.to_s(with_language: true)).to eq(pubid_es_with_lang)
  end
end

shared_examples "converts pubid to chinese pubid with language" do
  it "converts pubid to chinese pubid with language" do
    subject.root.language = "zh"
    expect(subject.to_s(with_language: true)).to eq(pubid_zh_with_lang)
  end
end

shared_examples "converts pubid to russian pubid with language" do
  it "converts pubid to russian pubid with language" do
    subject.root.language = "ru"
    expect(subject.to_s(with_language: true)).to eq(pubid_ru_with_lang)
  end
end

shared_examples "converts pubid to arabic pubid with language" do
  it "converts pubid to arabic pubid with language" do
    subject.root.language = "ar"
    expect(subject.to_s(with_language: true)).to eq(pubid_ar_with_lang)
  end
end

shared_examples "converts pubid to long pubid with language" do
  it "converts pubid to long pubid with language" do
    expect(subject.to_s(format: :long, with_language: true)).to eq(pubid_long_with_lang)
  end
end

shared_examples "converts pubid to long french pubid with language" do
  it "converts pubid to long french pubid with language" do
    subject.root.language = "fr"
    expect(subject.to_s(format: :long, with_language: true)).to eq(pubid_long_fr_with_lang)
  end
end

shared_examples "converts pubid to long spanish pubid with language" do
  it "converts pubid to long spanish pubid with language" do
    subject.root.language = "es"
    expect(subject.to_s(format: :long, with_language: true)).to eq(pubid_long_es_with_lang)
  end
end

shared_examples "converts pubid to long chinese pubid with language" do
  it "converts pubid to long chinese pubid with language" do
    subject.root.language = "zh"
    expect(subject.to_s(format: :long, with_language: true)).to eq(pubid_long_zh_with_lang)
  end
end

shared_examples "converts pubid to long russian pubid with language" do
  it "converts pubid to long russian pubid with language" do
    subject.root.language = "ru"
    expect(subject.to_s(format: :long, with_language: true)).to eq(pubid_long_ru_with_lang)
  end
end

shared_examples "converts pubid to long arabic pubid with language" do
  it "converts pubid to long arabic pubid with language" do
    subject.root.language = "ar"
    expect(subject.to_s(format: :long, with_language: true)).to eq(pubid_long_ar_with_lang)
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
