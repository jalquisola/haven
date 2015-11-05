module ApplicationHelper

  def bootstrap_class_for flash_type
    { success: "alert-success",
      error: "alert-danger",
      alert: "alert-warning",
      notice: "alert-success" }[flash_type.to_sym] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} alert-dismissible", role: "alert") do 
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
              concat message 
            end)
    end
    nil
  end

  def price_label(price)
    number_to_human(price, format: "Php %n %u+")
  end

  def description_label(property)
    if property.blank?
      "Find your future home or investments at #{ENV['WEBSITE_TITLE']}. Own a unit for as low as Php 8,000 a month."
    else
      "#{property.name} is located at #{property.location}.Own a unit in #{property.name} for as low as Php #{property.monthly_amort}++ per month."
    end
  end
end
