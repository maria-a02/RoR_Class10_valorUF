module Api
    module V1
        class UfsController < V1Controller
            def by_date
                @ufs = Uf.find_by(day: params[:day])
                render json: @ufs
            end
        end
    end
end
