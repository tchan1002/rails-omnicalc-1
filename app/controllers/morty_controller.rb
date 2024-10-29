class MortyController < ApplicationController
  def square_new
    render({:template => "calc/square_new"})
  end
  def square_results
    @sq_number = params.fetch("number").to_f
    @sq_result = @sq_number ** 2
    render({:template => "calc/square_results"})
  end
  def square_root_new
    render({:template => "calc/square_root_new"})
  def square_root_results
    @sqroot_number = params.fetch("user_number").to_f
    @sqroot_result = @sqroot_number ** 0.5
    render({:template => "calc/square_root_results"})
  end
  end
  def payment_new
    render({:template => "calc/payment_new"})
  end
  def payment_results
    @apr = params["user_apr"].to_f
    @years = params["user_years"].to_i
    @principal = params["user_pv"].to_f
    @interest_rate = @apr/100/12
    @months = @years * 12
    @payment = @interest_rate * @principal / (1 - (1+@interest_rate)**-@months )

    render({:template => "calc/payment_results"})
  end
  def random_new
    render({:template => "calc/random_new"})
  end
  def random_results
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @result = rand(@min..@max)
    render({:template => "calc/random_results"})
  end
end
