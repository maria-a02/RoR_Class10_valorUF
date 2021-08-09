module Api
    module V1
        class ClientsController < V1Controller
            def by_name
                @client = Client.find_by(name: params[:name])
                render json: @client
            end
        end    
    end
end
