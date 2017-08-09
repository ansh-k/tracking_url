require './carrier/gso'
class Track

  def self.link(number,carrier)
    tracking_no = trim_number(number)
    if carrier.tracking_number?(tracking_no)
      "#{carrier.base_url}#{carrier.tracking_path(tracking_no)}"
    else
      nil
    end  
  end  

  def self.trim_number(number)
    number.strip
  end

end  

puts Track.link("77085071017342912945",Gso)