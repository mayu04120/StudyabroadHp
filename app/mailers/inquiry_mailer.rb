class InquiryMailer < ApplicationMailer
	default to: "mayutaro89@yahoo.co.jp"
	default from: "mayutaro89@yahoo.co.jp"

	def received_email(inquiry)
	  @inquiry = inquiry
	  mail(:subject => 'ユーザーに配信されるメールのタイトル')
	end

	 def index
	 	@inquiry = Inquiry.new
	 	render :action =>'index'

	 	mail to:"mayutaro89@yahoo.co.jp"
	 end

	 def gratitude
	 	@inquiry=InquiryMailer.new(inquiry_params[:id])
	 	InquiryMailer.received_email(@inquiry).deliver_now

	 	render :action =>'gratitude'
	 	mail to:"mayutaro89@yahoo.co.jp"
	 end

	private
	  def inquiry_params
	    params.require(:inquiry).permit(:name, :mail, :contents, :title)
	  end
end
