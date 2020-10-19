class ApplicationController < ActionController::Base
    include ApplicationHelper

    private

    def checked_for_logged_in
        redirect_to '/' if !logged_in?
    end
end
