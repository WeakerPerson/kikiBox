class AboutController < AccountController
  def index
    if current_user
      render :partial => 'top/authed'
    else
      render :partial => 'about/index'
    end
  end
end
