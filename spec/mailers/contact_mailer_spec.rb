require "rails_helper"

RSpec.describe ContactMailer, type: :mailer do
  describe 'notify' do
    before do
      @contact = Contact.new { FactoryGirl.attributes_for(:contact) }
    end

    let(:mail) { ContactMailer.welcome_email(@contact) }

    it 'renders the headers' do
      expect(mail.subject).to eq("C&B Abogados - Solicitud de contacto")
      expect(mail.to).to eq(["camposyballesteros@gmail.com"])
      expect(mail.from).to eq(["contacto@camposyballesteros.cl"])
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match("Hola")
    end
  end
end
