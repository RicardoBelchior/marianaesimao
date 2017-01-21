class RsvpMailer < ApplicationMailer
  default from: "no-reply@ritaeantonio.com", to: "ricardolagido@gmail.com"

  def rsvp name, email, notes, answer
    @name = name
    @email = email
    @notes = notes
    @answer = answer
    mail(subject: "[RSVP] #{@name} - #{@answer}")
  end

  def suggestions name, email, suggestions
    @name = name
    @email = email
    @suggestions = suggestions
    mail(subject: "[Suggestions] #{@name}")
  end
end
