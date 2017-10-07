class PortofoliosController < ApplicationController
    before_action :set_blog, only: [:update, :edit, :show, :destroy]
    def index
        @portofolio_items = Portofolio.all
    end
    
    def angular
        @angular_portofolio_items = Portofolio.angular
    end
    
    def new
        @portofolio_item = Portofolio.new
    end
    

    
    def create
         @portofolio_item = Portofolio.new(blog_params)
        
        if @portofolio_item.save 
            redirect_to @portofolio_item, notice: "your protofoli has been created"
         else
            render :new
        end
        
    end
    
    def edit
    end

    def update 

        if @portofolio_item.update(blog_params)
            redirect_to portofolios_path, notice: "you have updated your portofolio"
        else
            render :edit
     end
              
    end
    
    def show
    end

    def destroy
        @portofolio_item.destroy
        redirect_to portofolios_path
    end

 private
    
       def set_blog 
               @portofolio_item = Portofolio.find(params[:id])
               
        end
    
        def blog_params
            params.require(:portofolio).permit(:title, :subtitle, :body)
        end
    
end
    
   