class PostPolicy
  attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def publish?
    @user.role == "editor"
  end

  def edit?
    @user.role == "editor" || @user.role == "author"
  end

  def show?
    @user.role == "editor"
  end

end
