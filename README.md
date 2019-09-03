# README

Please do this steps:

rake db:create
rake db:migrate
rake db:seed

GET request for random allocate number
localhost:3000/api/v1/users/:user_id/allocate_number

e.g.
localhost:3000/api/v1/users/1/allocate_number

PUT
localhost:3000/api/v1/users/:user_id/fancy_number?number=params[:number]

e.g.
localhost:3005/api/v1/users/1/fancy_number?number=2232342342