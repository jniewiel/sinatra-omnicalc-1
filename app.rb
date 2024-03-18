# app.rb

require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square_new)
end

# ----------------------------------------- #

get("/square/new") do
  erb(:square_new)
end

# ----------------------------------------- #

get("/square_root/new") do
  erb(:square_root_new)
end

# ----------------------------------------- #

get("/payment/new") do
  erb(:payment_new)
end

# ----------------------------------------- #

get("/random/new") do
  erb(:random_new)
end

# ----------------------------------------- #

get("/square/results") do
  @number = params.fetch("number").to_f
  @square = (@number * @number).to_f

  erb(:square_results)
end

# ----------------------------------------- #

get("/square_root/results") do
  @user_number = params.fetch("user_number").to_f
  @square_root = Math.sqrt(@user_number).to_f
  
  erb(:square_root_results)
end

# ----------------------------------------- #

get("/payment/results") do
  @user_apr = (params.fetch("user_apr").to_f)
  @user_years = params.fetch("user_years").to_i
  @user_pv = params.fetch("user_pv").to_i

  apr = ((@user_apr / 100)/ 12)
  years = @user_years * 12
  @payment = (@user_pv * apr * (1 + apr) ** years / ((1 + apr) ** years - 1)).to_fs(:currency, {:precision => 2})

  @apr_print = @user_apr.to_fs(:percentage, {:precision => 4})
  @principal_print = @user_pv.to_fs(:currency, {:precision => 2})
  erb(:payment_results)
end

# ----------------------------------------- #

get("/random/results") do
  @minimum = params.fetch("user_min").to_i
  @maximum = params.fetch("user_max").to_i
  @random_number = rand(@minimum..@maximum).to_f

  erb(:random_results)
end

# ----------------------------------------- #
