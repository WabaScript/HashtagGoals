class ApplicationController < ActionController::Base
    before_action :authorized #lock down this whole app
    helper_method :current_user #we can call current_user from a view
    helper_method :logged_in?
    helper_method :random_glow_video
    helper_method :random_poly_video
    #

    def current_user
      User.find_by(id: session[:user_id])
    end
    #
    def logged_in?
      !!current_user
    end
    #
    def authorized
      redirect_to login_path unless logged_in?
    end
  
    def random_glow_video
      vids = ['GlowingFall.webm', 'blueGlowingFall.webm',
      'GreenGlowingFall.webm',
      'purpleGlowingFall.webm',
      'redGlowingFall.webm']
   
      return vids[rand(5)]
    end

    def random_poly_video
      vids = ["bopolygon.webm", "rbpolygon.webm",
      "bppolygon.webm", "ygpolygon.webm", "rtpolygon.webm"]
      return vids[rand(5)]
    end


  
end
