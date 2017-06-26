class FavoriteMailer < ApplicationMailer
  default from: "will23larry@gmail.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@wl-bloccit.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@wl-bloccit.example>"
    headers["References"] = "<post/#{post.id}@wl-bloccit.example>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, cc: "wilson.rector@bloc.io", subject: "New comment on #{post.title}")
  end

  def new_post(post)
    headers["Message-ID"] = "<posts/#{post.id}@wl-bloccit.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@wl-bloccit.example>"
    headers["References"] = "<post/#{post.id}@wl-bloccit.example>"

    @post = post
    mail(to: post.user.email, subject: "You're following,  #{post.title}!")
  end
end
