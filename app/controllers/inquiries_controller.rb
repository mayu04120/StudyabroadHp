class InquiriesController < ApplicationController
	 def index
	 	@inquiry = Inquiry.new
	 	render :action =>'index'
	 end

	 def gratitude
	 	@inquiry=Inquiry.new(inquiry_params[:id])
	 	InquiryMailer.received_email(@inquiry).deliver_now

	 	render :action =>'gratitude'
	 end

	private
	  def inquiry_params
	    params.require(:inquiry).permit(:name, :mail, :contents, :title)
	 end
	 
end
