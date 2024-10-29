module Pubid::Itu
  module Identifier
    class Annex < Supplement
      def_delegators 'Pubid::Itu::Identifier::Annex', :type

      attr_accessor :base

      def initialize(base: nil, **opts)
        super(**opts)
        @base = base
      end

      def self.type
        { key: :annex, title: "Annex" }
      end

      def to_s(**opts)
        if number.nil? && publisher == "ITU" && base.series == "OB"
          return Renderer::AnnexOb.new(to_h(deep: false)).render(**opts)
        end

        self.class.get_renderer_class.new(to_h(deep: false)).render
      end
    end
  end
end
