module Api
    module V1
        class UfsController < V1Controller
            def by_date
                @client = Client.find_by(name: request.headers["X-CLIENTE"])
                @client.login_count += 1
                @client.save
                @ufs = Uf.find_by(day: params[:date])
                render json: jsoned_uf(@ufs)
            end

            private

            def jsoned_uf(ufs)
            array = []
            h = {}
            h['day'] = ufs.day.strftime("%Y/%m/%d")
            h['value'] = ufs.value
            array << h
            return array
            end
        end
    end
end
