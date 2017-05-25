class ContactMailer < ApplicationMailer
  default from: 'contacto@camposyballesteros.cl'

  def welcome_email(contact)
    @contact = contact
    @url = 'hola'
    mail(to: 'franciscojavier.c.c@gmail.com', subject: 'C&B Abogados - Solicitud de contacto')
  end
end
