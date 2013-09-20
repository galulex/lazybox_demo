module ApplicationHelper

  def error_tag(error)
    unless error.blank?
      content_tag(:span, error.is_a?(Array) ? error.first : error, :class => :error)
    end
  end

  def llink_to(name = nil, options = nil, html_options = nil, &block)
    name = t("links.#{name}") unless block_given?
    link_to name, options, html_options, &block
  end

end
