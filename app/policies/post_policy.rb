class PostPolicy < ApplicationPolicy

  def initialize(user, post)
    @user = user
    @post = post
  end

  class Scope < Struct.new(:user, :scope)
    def resolve
      if user == nil
        scope.where(published: true)
      elsif user.author?
        scope.where(author.id == user.id)
      else user.editor?
        scope.all
      end
    end
  end

  def index?
  end

  def new?
    true
  end

  def create?
   if @user
      @user.role == "editor" || @user.role == "author"
    end
  end

  def show?
    true
  end

  def publish?
    @user.role == "editor"
  end

  def edit?
    if @user
      @user.role == "editor" || @user.role == "author"
    end
  end

  def update?
    if @user
      @user.role == "editor" || @user.role == "author"
    end
  end

  def destroy?
    if @user
      @user.role == "editor"
    end
  end
end
