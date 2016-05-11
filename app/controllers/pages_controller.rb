class PagesController < ApplicationController
    def about
        @christian = "Chrisitan"
        # render :contact
    end

    def contact
        @christian = "gonzo"
    end
end
