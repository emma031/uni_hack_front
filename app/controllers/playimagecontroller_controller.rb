class PlayimagecontrollerController < ApplicationController
    def index
      @resumes = PlayImageUploader.all
   end
   
   def new
      @resume = PlayImageUploader.new
   end
   
   def create
      @resume = PlayImageUploader.new(resume_params)
      
      if @resume.save
         redirect_to resumes_path, notice: "The resume #{@resume.name} has been uploaded."
      else
         render "new"
      end
      
   end
   
   def destroy
      @resume = PlayImageUploader.find(params[:id])
      @resume.destroy
      redirect_to resumes_path, notice:  "The resume #{@resume.name} has been deleted."
   end
   
   private
      def resume_params
      params.require(:resume).permit(:name, :attachment)
   end
end
