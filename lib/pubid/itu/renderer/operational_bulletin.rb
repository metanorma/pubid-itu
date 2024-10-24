module Pubid::Itu::Renderer
  class OperationalBulletin < Base
    def render_identifier(params, opts)
      language = opts[:language]&.to_s || "en"
      format = opts[:format]&.to_s || "short"

      return super unless Pubid::Itu::I18N["itu_ob"][format]&.fetch(language, nil)

      # render the whole identifier using template in i18n.yaml for long
      Pubid::Itu::I18N["itu_ob"][format]&.fetch(language).sub("%", @params[:number]) + params[:date]
    end
  end
end
