# frozen_string_literal: true

module RpFormHelper
  def rp_form_for(record, options = {}, &block)
    simple_form_for(record, options, &block)
  end

  def rp_search_form_for(record, options = {}, &block)
    options.reverse_merge!(
      defaults: { input_html: { class: 'form-control-sm' } }
    )

    search_form_for(record, options, &block)
  end

  # FIXME: What about to add the helper search_form_with ?
  # https://github.com/activerecord-hackery/ransack/issues/962
end
