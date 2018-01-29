class TopController < AccountController
  def index
    if current_user
      render :partial => 'top/authed'
    else
      render :partial => 'top/top'
    end
  end

  def complete

  end
end


