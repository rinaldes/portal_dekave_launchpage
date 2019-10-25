class HasilController < ApplicationController
    
    def index
        @dataHasil = Sub.all
        @masalah1 = 0
        @masalah2 = 0
        @masalah3 = 0
        @masalah4 = 0
        @masalah5 = 0
        @masalah6 = 0
        @dataHasil.each do |hasildata|
            @masalah1 += hasildata.masalah.split("")[0].to_i rescue 0
            @masalah2 += hasildata.masalah.split("")[1].to_i rescue 0
            @masalah3 += hasildata.masalah.split("")[2].to_i rescue 0
            @masalah4 += hasildata.masalah.split("")[3].to_i rescue 0
            @masalah5 += hasildata.masalah.split("")[4].to_i rescue 0
            @masalah5 += hasildata.masalah.split("")[5].to_i rescue 0
        end
        respond_to do |format|
            format.html
        end
    end

end