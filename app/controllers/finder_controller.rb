class FinderController < ApplicationController
  #views/finder/index.html.erb
  def index
    @customers = Customer.all
  end

  #views/finder/alphabetized/html/erb
  def alphabetized
    # For some reason Customer.order(:full_name) wasn't sorting as expected.
	@customers = Customer.order("lower(full_name) ASC").all
  end

  #views/finder/missing_email/html/erb
  def missing_email
    @customers = Customer.where(email_address: '')
  end
end
