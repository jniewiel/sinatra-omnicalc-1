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
  @number = params.fetch("number").to_i
  @square = (@number * @number).to_f

  erb(:square_results)
end

# ----------------------------------------- #

get("/square_root/results") do
  @user_number = params.fetch("user_number").to_i
  @square_root = Math.sqrt(@user_number).to_f
  
  erb(:square_root_results)
end

# ----------------------------------------- #

get("/payment/results") do
  erb(:payment_results)
end

# ----------------------------------------- #

get("/random/results") do
  erb(:random_results)
end

# ----------------------------------------- #
