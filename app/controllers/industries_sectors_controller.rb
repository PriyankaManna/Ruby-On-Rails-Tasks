class IndustriesSectorsController < ApplicationController
    def new
        @industries_sector = IndustriesSector.new
        @industry = Industry.all
        @sector = Sector.all
    end
    def create
        @industries_sector = IndustriesSector.new(industries_sector_params)
       
        if @industries_sector.save
          redirect_to root_path, notice: "Sector added successfully ." 
        else
            redirect_to root_path, notice: "Sector did not added." 
        end
        
      end
    
      def destroy
        @industries_sector = IndustriesSector.find_by(sector_id: params[:sector_id],industry_id: params[:industry_id])

        @industries_sector.destroy
    
        respond_to do |format|
      
          format.html { redirect_to root_path }
          format.json { head :no_content }
        end
      end
      private
       
        def industries_sector_params
            params.require(:industries_sector).permit(:industry_id, :sector_id)
        end
end
