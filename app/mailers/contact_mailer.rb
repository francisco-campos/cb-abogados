class ContactMailer < ApplicationMailer
  default from: 'franciscojavier.c.c@gmail.com'

  def welcome_email(contact)
    @contact = contact
    @url = 'hola'
    mail(to: 'camposyballesteros@gmail.com', subject: 'C&B Abogados - Solicitud de contacto')
  end
end
