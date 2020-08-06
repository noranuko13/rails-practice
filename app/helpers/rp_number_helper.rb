# frozen_string_literal: true

module RpNumberHelper
  def rp_number_price(price)
    number_with_delimiter(number_with_precision(price, strip_insignificant_zeros: true))
  end
end
