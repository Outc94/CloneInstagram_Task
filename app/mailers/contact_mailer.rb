class ContactMailer < ApplicationMailer
  def contact_mail(post)
    @post = post
    mail to: @post.user.email, subject: "confirmation e-mail of inquiry"
  end
end
