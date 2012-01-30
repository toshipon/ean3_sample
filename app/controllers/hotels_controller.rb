class HotelsController < ApplicationController

  # /hotels
  # /hotels.json
  def show
    options = {
        :apikey => EAN3_CONFIG["apikey"],
        :secret => EAN3_CONFIG["secret"],
        :cid => EAN3_CONFIG["cid"],
        :minorRev => 12,
        :locale => "ja_JP",
        :currencyCode => "JPY",
        :debug => true
    }
    @client = Ean3::Client.new(options)
    @response = @client.getList({
        :arrivalDate => "03/10/2012",
        :departureDate => "03/13/2012"
        :city => "tokyo"
    })
    respond_to do |format|
      format.json
    end
  end
end
