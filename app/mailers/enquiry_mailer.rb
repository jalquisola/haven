class EnquiryMailer < ApplicationMailer

  def send_email(property_id, enquiry_id)
    @property = Property.where(id: property_id).first
    @enquiry = Enquiry.where(id: enquiry_id).first
    if @enquiry
      mail(to: ENV['RECIPIENT_EMAIL'],
         subject: @enquiry.title,
         from: @enquiry.email)
    end
  end

end
