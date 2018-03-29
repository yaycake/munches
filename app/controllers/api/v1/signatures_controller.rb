# signature_controller.rb

# @params = {
#   body: { order_id: "201804251641" },
#   shop_no: "11047059",
#   format: "json",
#   timestamp: "1488363493",
#   v: "1.0",
#   source_id: "73753"
# }

# @params = the params sent from the post request

class Api::V1::SignaturesController < Api::V1::BaseController
  # skip_before_action :verify_authenticity_token
  require 'digest/md5'
  require 'net/http'

  @app_secret = "d80b3b3da95604eccb78be543c7edf56"
  @app_key = "dada1ae4c46105bf672"


  def receive_params
    respond_to :json

    render json: {test: "this is working"}

    @signature = Signature.new(signature_params)

    puts "This is the data: "


    timestamp = @signature.timestamp
    # puts timestamp

    v = @signature.v
    # puts v

    source_id = @signature.source_id
    # puts source_id

    shop_no = @signature.shop_no
    # puts shop_no

    signature = @signature.signature
    # puts signature

    order_id = @signature.order_id
    puts "Below is body: "

    body = @signature.body
    puts body
    puts "Everything is okay"


    puts "These the params: "

    @params = {
      timestamp: timestamp,
      v: v,
      source_id: source_id,
      shop_no: shop_no,
      signature: signature,
      body: body
    }
    puts @params

    assemble_signature(@params)
  end

  # params is a hash, with all the signature attributes
  def get_order_id(params)
    puts "Initiate Get Order id"
    puts params.class

    order_id = params.fetch(:body)
    puts order_id.class
    puts "Order ID is a: "
    puts order_id
    return order_id
  end

  # get_order_id(@params)

  def signaturize(params)
      # Sort by key, alphabetical
      params = Hash[params.sort_by { |key, value| key }]
      # Deletes Body from params
      new_params = params.delete_if { |key| key == :body }
      # Flatten to array
      array = new_params.flatten
      # Join array to make a string
      string = array.join
      return string
  end

  def assemble_signature(params)
    puts "Initiate signature assembly"
    sig = signaturize(params)
    order_id = get_order_id(params)
    final_sig = @app_secret + @app_key + order_id + sig + @app_secret
    puts "Here's the final sig: "
    puts final_sig
    md5_sig = Digest::MD5.hexdigest(final_sig)
    puts md5_sig
    return md5_sig
  end

  private

  def signature_params
    # These params are required to create an event in event/new view
    params.delete(:format)
    params.permit(:timestamp, :v, :source_id, :shop_no, :signature, :order_id, {:body => [:order_id]})
  end
end

