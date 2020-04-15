class ContactMailer < ApplicationMailer
  def contact_mail(post)
    @post = post
    mail to: "outc94@mail.com", subject: "confirmation e-mail of inquiry"
  end
end
