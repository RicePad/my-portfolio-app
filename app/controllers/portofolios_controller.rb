class PortofoliosController < ApplicationController

    def index
        @portofolio_items = Portofolio.all
    end
    
    def new
        @portofolio_item = Portofolio.new
    end
    

    
    def create
         @portofolio_item = Portofolio.new(blog_params)
        
        if @portofolio_item.save 
            redirect_to portofolios_path, notice: "your protofoli has been created"
         else
            render :new
        end
        
    end
    
    def show 
    end
 
 private
    
        def blog_params
            params.require(:portofolio).permit(:title, :subtitle, :body)
        end
    
end
    
   