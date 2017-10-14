class PortofoliosController < ApplicationController
     skip_before_action :verify_authenticity_token  

    before_action :set_blog, only: [:update, :edit, :show, :destroy]
    layout('portofolio')
     access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :edit, :destroy, :update]}, site_admin: :all

    def index
        @portofolio_items = Portofolio.by_position
    end
    
    def sort 
         params[:order].each do |key, value|
          Portofolio.find(value[:id]).update(position: value[:position])
        end
        
        render nothing: true
    
    end
    
    def angular
        @angular_portofolio_items = Portofolio.angular
    end
    
    def new
        @portofolio_item = Portofolio.new
        3.times { @portofolio_item.technologies.build }
    end
    

    
    def create
         @portofolio_item = Portofolio.new(portofolio_params)
        
        if @portofolio_item.save 
            redirect_to portofolios_path, notice: "your protofoli has been created"
         else
            render :new
        end
        
    end
    
    def edit
    end

    def update 

        if @portofolio_item.update(portofolio_params)
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
    
        def portofolio_params
            params.require(:portofolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
        end
    
end
    
   