class HomeController < ApplicationController
  def index
  	members={
		"0": {"Name": "함상빈", "Main_Role": "팀장"}, 
		"1": {"Name": "김용현", "Main_Role": "개발"}, 
		"2": {"Name": "송서하", "Main_Role": "개발"},
		"3": {"Name": "장종현", "Main_Role": "마케팅"}
	}
	duty_number=(Time.new.to_i/86400+2).modulo(4)
	duty=(duty_number.to_s.to_sym)
	@duty=members[duty]
  end
end
