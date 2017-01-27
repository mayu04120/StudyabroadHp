class InquiryMailer < ApplicationMailer
	default to: "dmpp1204@gmail.com"
	default from: "dmpp1204@gmail.com"

	def received_email(inquiry)
	  @inquiry = inquiry
	  mail(:subject => 'Websiteからのメッセージ')
	end

	 def index
	 	@inquiry = Inquiry.new
	 	render :action =>'index'

	 	mail to:"dmpp1204@gmail.com"
	 end

	 def gratitude
	 	@inquiry=InquiryMailer.new(inquiry_params[:id])
	 	InquiryMailer.received_email(@inquiry).deliver_now

	 	render :action =>'gratitude'
	 	mail to:"dmpp1204@gmail.com"
	 end

	private
	  def inquiry_params
	    params.require(:inquiry).permit(:name, :mail, :contents, :title)
	  end
end
