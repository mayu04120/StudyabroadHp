class InquiryMailer < ApplicationMailer

	def received_email(inquiry)
	  @inquiry = inquiry
	  mail(:subject => 'Websiteからのメッセージ')
	end

	 def index
	 	@inquiry = Inquiry.new
	 	render :action =>'index'
	 end

	 def gratitude
	 	@inquiry=InquiryMailer.new(inquiry_params[:id])
	 	InquiryMailer.received_email(@inquiry).deliver_now

	 	render :action =>'gratitude'
	 end

	private
	  def inquiry_params
	    params.require(:inquiry).permit(:name, :mail, :contents, :title)
	  end
end
