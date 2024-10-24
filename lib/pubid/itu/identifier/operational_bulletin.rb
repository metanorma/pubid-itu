module Pubid::Itu
  module Identifier
    class OperationalBulletin < Base
      def_delegators 'Pubid::Itu::Identifier::OperationalBulletin', :type

      def self.type
        { key: :operational_bulletin, title: "Operational Bulletin" }
      end

      def self.get_renderer_class
        Renderer::OperationalBulletin
      end
    end
  end
end
