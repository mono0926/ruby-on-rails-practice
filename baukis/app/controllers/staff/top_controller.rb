class Staff::TopController < ApplicationController
  def index
    # raise InAddressRejected
    render action: 'index'
  end
end
