class Gso
  class << self 
    
    def base_url
      "https://www.gso.com/"
    end

    def tracking_path(tracking_no)
      "tracking/#{tracking_no}"
    end
      
    def tracking_number?(tracking_no)
      tracking_no.scan(/770850[0-9]{3}173[0-9]{8}/).first.eql? tracking_no
    end

  end
end
