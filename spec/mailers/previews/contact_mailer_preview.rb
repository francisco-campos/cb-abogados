# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def welcome_email_preview
    ContactMailer.welcome_email(Contact.first)
  end
end
