class Staff::TopController < Staff::Base
  def index
    # raise InAddressRejected
    render action: 'index'
  end
end
