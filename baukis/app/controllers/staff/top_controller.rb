class Staff::TopController < Staff::Base
  skip_before_action :authorize

  def index
    # raise InAddressRejected
    render action: 'index'
  end
end
