module Pubid::Itu
  module Identifier
    class Recommendation < Base
      def_delegators 'Pubid::Itu::Identifier::Recommendation', :type

      def initialize(**opts)
        # add type when Recommendation is default type
        super(**opts.merge(type: "REC"))
      end

      def self.type
        { key: :recommendation, title: "Recommendation", short: "REC" }
      end
    end
  end
end
