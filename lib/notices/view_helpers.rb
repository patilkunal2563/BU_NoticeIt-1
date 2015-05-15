module Notices
  module ViewHelpers
    
    # Returns currency values with the currency unit as specified by the Shoppe settings
    def number_to_currency(number, options = {})
      options[:unit] ||= Notices.settings.currency_unit
      super
    end

    # Returns a number of kilograms with the appropriate suffix
    def number_to_weight(kg)
      "#{kg}#{t('notices.helpers.number_to_weight.kg', :default => 'kg')}"
    end
    
  end
end
