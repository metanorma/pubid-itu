module Pubid::Itu
  RSpec.describe Identifier do
    subject { described_class.parse(original || pubid) }
    let(:original) { nil }

    context "ITU-T T.4" do
      let(:pubid) { "ITU-T T.4" }

      it_behaves_like "converts pubid to pubid"

      it { expect(subject).to be_a(Identifier::Recommendation) }
    end

    context "ITU-T L.163" do
      let(:original) { "ITU-T L.163" }
      let(:pubid) { "ITU-T L.163" }

      it_behaves_like "converts pubid to pubid"
    end

    context "ITU-R V.574-5" do
      let(:pubid) { "ITU-R V.574-5" }

      it_behaves_like "converts pubid to pubid"
    end

    context "ITU-R REC V.574-5" do
      let(:original) { "ITU-R REC-V.574-5" }
      let(:pubid) { "ITU-R V.574-5" }

      it_behaves_like "converts pubid to pubid"
    end

    context "ITU-R SA.364-6" do
      let(:pubid) { "ITU-R SA.364-6" }
      let(:pubid_ru) { "Рек. МСЭ-R SA.364-6" }
      let(:pubid_es) { "Rec. UIT-R SA.364-6" }
      let(:pubid_ar) { "ITU-R SA.364-6 التوصية" }
      let(:pubid_zh) { "ITU-R SA.364-6建议书" }

      it_behaves_like "converts pubid to pubid"
      it_behaves_like "converts pubid to russian pubid"
      it_behaves_like "converts pubid to spanish pubid"
      it_behaves_like "converts pubid to arabic pubid"
      it_behaves_like "converts pubid to chinese pubid"
    end

    # question
    context "ITU-R SG01.222-200" do
      let(:pubid) { "ITU-R SG01.222-200" }
      let(:pubid_ru) { "МСЭ-R SG01.222-200" }

      it_behaves_like "converts pubid to pubid"
      it_behaves_like "converts pubid to russian pubid"

      it { expect(subject).to be_a(Identifier::Question) }
    end

    # handbook
    context "ITU-R 20-200" do
      let(:pubid) { "ITU-R 20-200" }

      it_behaves_like "converts pubid to pubid"

      it { expect(subject).to be_an_instance_of(Identifier::Base) }
    end

    # resolution
    context "ITU-R R.9-6" do
      let(:pubid) { "ITU-R R.9-6" }

      it_behaves_like "converts pubid to pubid"

      it { expect(subject).to be_a(Identifier::Resolution) }
    end

    context "ITU T-REC-T.4" do
      let(:original) { "ITU T-REC-T.4" }
      let(:pubid) { "ITU-T T.4" }
      let(:pubid_with_type) { "ITU-T REC-T.4" }

      it_behaves_like "converts pubid to pubid"
      it_behaves_like "converts pubid to pubid with type"
    end

    context "ITU-T REC-T.4" do
      let(:original) { "ITU-T REC-T.4" }
      let(:pubid) { "ITU-T T.4" }

      it_behaves_like "converts pubid to pubid"
    end

    context "ITU-T REC T.4" do
      let(:original) { "ITU-T REC T.4" }
      let(:pubid) { "ITU-T T.4" }

      it_behaves_like "converts pubid to pubid"
    end

    context "ITU-T T.4 (07/2003)" do
      let(:pubid) { "ITU-T T.4 (07/2003)" }

      it_behaves_like "converts pubid to pubid"
    end

    context "ITU-R 52 (2014)" do
      let(:pubid) { "ITU-R 52 (2014)" }

      it_behaves_like "converts pubid to pubid"
    end

    context "ITU T-REC-T.4-200307" do
      let(:original) { "ITU T-REC-T.4-200307" }
      let(:pubid) { "ITU-T T.4 (07/2003)" }

      it_behaves_like "converts pubid to pubid"
    end

    context "ITU T-REC-T.4-200307-I" do
      let(:original) { "ITU T-REC-T.4-200307-I" }
      let(:pubid) { "ITU-T T.4 (07/2003)" }

      it_behaves_like "converts pubid to pubid"
    end

    context "ITU-T OB.1096" do
      let(:original) { "ITU-T OB.1096" }
      let(:pubid) { "ITU OB 1096" }
      let(:pubid_ru) { "ОБ МСЭ №. 1096" }
      let(:pubid_fr) { "BE de l'UIT 1096" }
      let(:pubid_zh) { "第1096期《操作公报》" }
      let(:pubid_ar) { "النشرة التشغيلية رقم 1096"}
      let(:pubid_es) { "BE de la UIT N.º 1096" }
      let(:pubid_long) { "ITU Operational Bulletin No. 1096" }
      let(:pubid_long_ru) { "Оперативный бюллетень МСЭ №. 1096" }
      let(:pubid_long_fr) { "Bulletin d'exploitation de l'UIT No 1096" }
      let(:pubid_long_zh) { "国际电联第1096期《操作公报》" }
      let(:pubid_long_ar) { "رقم1096 النشرة التشغيلية للاتحاد الدولي للاتصالات" }
      let(:pubid_long_es) { "Boletín de explotación de la UIT N.o 1096" }

      it_behaves_like "converts pubid to pubid"
      it_behaves_like "converts pubid to russian pubid"
      it_behaves_like "converts pubid to french pubid"
      it_behaves_like "converts pubid to chinese pubid"
      it_behaves_like "converts pubid to arabic pubid"
      it_behaves_like "converts pubid to spanish pubid"
      it_behaves_like "converts pubid to long pubid"
      it_behaves_like "converts pubid to long russian pubid"
      it_behaves_like "converts pubid to long french pubid"
      it_behaves_like "converts pubid to long chinese pubid"
      it_behaves_like "converts pubid to long arabic pubid"
      it_behaves_like "converts pubid to long spanish pubid"

      it { expect(subject).to be_a(Identifier::OperationalBulletin) }
    end

    context "ITU OB 1096" do
      let(:pubid) { "ITU OB 1096" }

      it_behaves_like "converts pubid to pubid"
    end

    context "ITU-T Operational Bulletin No. 1096" do
      let(:original) { "ITU-T Operational Bulletin No. 1096" }
      let(:pubid) { "ITU OB 1096" }

      it_behaves_like "converts pubid to pubid"

      it { expect(subject).to be_a(Identifier::OperationalBulletin) }
    end

    context "ITU-T OB.1096 - 15.III.2016" do
      let(:original) { "ITU-T OB.1096 - 15.III.2016" }
      let(:pubid) { "ITU OB 1096 (03/2016)" }

      it_behaves_like "converts pubid to pubid"
    end

    context "ITU-T G.989 Amd 1" do
      let(:pubid) { "ITU-T G.989 Amd 1" }

      it_behaves_like "converts pubid to pubid"

      it { expect(subject).to be_a(Identifier::Amendment) }
    end

    context "ITU-T G.989.2" do
      let(:pubid) { "ITU-T G.989.2" }

      it_behaves_like "converts pubid to pubid"
    end

    context "ITU-T G.989 Amd. 1" do
      let(:original) { "ITU-T G.989 Amd. 1" }
      let(:pubid) { "ITU-T G.989 Amd 1" }

      it_behaves_like "converts pubid to pubid"
    end

    context "ITU-T M.3016.1" do
      let(:pubid) { "ITU-T M.3016.1" }
      let(:pubid_es) { "Rec. UIT-T M.3016.1" }
      let(:pubid_fr) { "Rec. UIT-T M.3016.1" }
      let(:pubid_ru) { "Рек. МСЭ-T M.3016.1" }
      let(:pubid_zh) { "ITU-T M.3016.1建议书" }
      let(:pubid_ar) { "ITU-T M.3016.1 التوصية" }

      it_behaves_like "converts pubid to pubid"
      it_behaves_like "converts pubid to french pubid"
      it_behaves_like "converts pubid to spanish pubid"
      it_behaves_like "converts pubid to chinese pubid"
      it_behaves_like "converts pubid to arabic pubid"
      it_behaves_like "converts pubid to russian pubid"
    end

    context "ITU-R RR (2020)" do
      let(:pubid) { "ITU-R RR (2020)" }

      it_behaves_like "converts pubid to pubid"

      it { expect(subject).to be_a(Identifier::RegulatoryPublication) }
    end

    context "ITU-T G.780/Y.1351" do
      let(:pubid) { "ITU-T G.780/Y.1351" }

      it_behaves_like "converts pubid to pubid"

      it { expect(subject.second_number[:series]).to eq("Y") }
      it { expect(subject.second_number[:number]).to eq("1351") }
    end

    context "ITU-T G.Imp712" do
      let(:pubid) { "ITU-T G.Imp712" }

      it_behaves_like "converts pubid to pubid"

      it { expect(subject).to be_a(Identifier::ImplementersGuide) }
    end

    context "ITU-T X.ImpOSI" do
      let(:pubid) { "ITU-T X.ImpOSI" }

      it_behaves_like "converts pubid to pubid"

      it { expect(subject).to be_a(Identifier::ImplementersGuide) }
    end

    context "ITU-T G.780/Y.1351 (2004) Amend. 1" do
      let(:original) { "ITU-T G.780/Y.1351 (2004) Amend. 1" }
      let(:pubid) { "ITU-T G.780/Y.1351 Amd 1 (2004)" }

      it_behaves_like "converts pubid to pubid"
    end

    context "Supplements" do
      context "ITU-T H Suppl. 1" do
        let(:pubid) { "ITU-T H Suppl. 1" }

        it_behaves_like "converts pubid to pubid"
      end

      context "ITU-T E.156 Suppl. 2" do
        let(:pubid) { "ITU-T E.156 Suppl. 2" }

        it_behaves_like "converts pubid to pubid"

        it { expect(subject.base.number).to eq("156") }
        it { expect(subject).to be_a(Identifier::Supplement) }
      end

      context "ITU-T A Suppl. 2 (12/2022)" do
        let(:pubid) { "ITU-T A Suppl. 2 (12/2022)" }

        it_behaves_like "converts pubid to pubid"

        it { expect(subject.base.number).to eq(nil) }
        it { expect(subject).to be_a(Identifier::Supplement) }
      end
    end

    context "ITU-T Z.100 Annex F2 (06/2021)" do
      let(:pubid) { "ITU-T Z.100 Annex F2 (06/2021)" }

      it_behaves_like "converts pubid to pubid"

      it { expect(subject).to be_a(Identifier::Annex) }
    end

    context "ITU-T G.729 Annex A (11/1996)" do
      let(:pubid) { "ITU-T G.729 Annex A (11/1996)" }

      it_behaves_like "converts pubid to pubid"

      it { expect(subject).to be_a(Identifier::Annex) }
    end

    context "ITU-T G.729 Annex C+ (02/2000)" do
      let(:pubid) { "ITU-T G.729 Annex C+ (02/2000)" }

      it_behaves_like "converts pubid to pubid"

      it { expect(subject).to be_a(Identifier::Annex) }
    end

    context "ITU-T Z.100 (1999) Cor. 1 (10/2001)" do
      let(:pubid) { "ITU-T Z.100 (1999) Cor. 1 (10/2001)" }

      it_behaves_like "converts pubid to pubid"

      it { expect(subject).to be_a(Identifier::Corrigendum) }
    end

    context "ITU-T G.729 Annex E (1998) Cor. 1 (02/2000)" do
      let(:pubid) { "ITU-T G.729 Annex E (1998) Cor. 1 (02/2000)" }

      it_behaves_like "converts pubid to pubid"

      it { expect(subject).to be_a(Identifier::Corrigendum) }
      it { expect(subject.base).to be_a(Identifier::Annex) }
    end

    context "ITU-T Q.400-Q.490" do
      let(:pubid) { "ITU-T Q.400-Q.490" }

      it_behaves_like "converts pubid to pubid"
    end

    context "ITU-T Z.100 (1993) Add. 1 (10/1996)" do
      let(:pubid) { "ITU-T Z.100 (1993) Add. 1 (10/1996)" }

      it_behaves_like "converts pubid to pubid"
    end

    context "ITU-T Z.100 App. II (03/1993)" do
      let(:original) { "ITU-T Z.100 App. II (03/1993)" }
      let(:pubid) { "ITU-T Z.100 App. 2 (03/1993)" }
      let(:pubid_ru) { "Рек. МСЭ-T Z.100 App. 2 (03/1993)" }

      it_behaves_like "converts pubid to pubid"
      it_behaves_like "converts pubid to russian pubid"
      it { expect(subject).to be_a(Identifier::Appendix) }
    end

    context "Annex to ITU-T OB.1283 (01/2024)" do
      let(:original) { "Annex to ITU-T OB.1283 (01/2024)" }
      let(:pubid) { "Annex to ITU OB 1283 (01/2024)" }
      let(:pubid_ru) { "Приложение к МСЭ OB 1283 (01/2024)" }
      let(:pubid_zh) { "国际电联第1283期《操作公报》附件 (01/2024)" }
      let(:pubid_ar) { "ملحق بالنشرة التشغيلية رقم ‎1283 (01/2024)" }
      let(:pubid_es) { "Anexo al BE de la UIT N.º 1283 (01/2024)" }
      let(:pubid_fr) { "Annexe au BE de l'UIT 1283 (01/2024)" }
      let(:pubid_long) { "Annex to ITU Operational Bulletin No. 1283 (01/2024)" }
      let(:pubid_long_ru) { "Приложение к ОБ 1283-R МСЭ (01/2024)" }
      let(:pubid_long_fr) { "Annexe au BE de l'UIT 1283-F (01/2024)" }
      let(:pubid_long_es) { "Anexo al BE de la UIT N.º 1283-S (01/2024)" }
      let(:pubid_long_zh) { "国际电联第1283期《操作公报》附件 (01/2024)" }
      let(:pubid_long_ar) { "ملحق ابلنشرة التشغيلية رقم ‎1283-A (01/2024)" }

      it_behaves_like "converts pubid to pubid"
      it_behaves_like "converts pubid to long pubid"
      it_behaves_like "converts pubid to russian pubid"
      it_behaves_like "converts pubid to long russian pubid"
      it_behaves_like "converts pubid to french pubid"
      it_behaves_like "converts pubid to long french pubid"
      it_behaves_like "converts pubid to spanish pubid"
      it_behaves_like "converts pubid to long spanish pubid"
      it_behaves_like "converts pubid to arabic pubid"
      it_behaves_like "converts pubid to long arabic pubid"
      it_behaves_like "converts pubid to chinese pubid"
      it_behaves_like "converts pubid to long chinese pubid"
    end

    context "identifier with language" do
      let(:pubid) { "ITU-T T.4-E" }

      it_behaves_like "converts pubid to pubid"
      it { expect(subject.language).to eq("en") }
    end

    describe "parse identifiers from examples files" do
      context "parses IEC identifiers from itu-r.txt" do
        let(:examples_file) { "itu-r.txt" }

        it_behaves_like "parse identifiers from file"
      end
    end
  end

end
