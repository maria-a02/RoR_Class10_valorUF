module Api
    module V1
        class UfsController < V1Controller
            def by_date
                @client = Client.find_by(name: request.headers["X-CLIENTE"])
                @client.login_count += 1
                @client.save
                @ufs = Uf.find_by(day: params[:day])
                render json: @ufs
            end
        end
    end
end