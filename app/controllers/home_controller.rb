class HomeController < ApplicationController
    # def index2
    #     members={
    #         "0": {"Name": "함상빈", "Main_Role": "팀장"},
    #         "1": {"Name": "김용현", "Main_Role": "개발"},
    #         "2": {"Name": "송서하", "Main_Role": "개발"},
    #         "3": {"Name": "장종현", "Main_Role": "마케팅"}
    #     }
    #     duty_number=(Time.new.to_i/86400+2).modulo(4)
    #     duty=(duty_number.to_s.to_sym)
    #     @duty=members[duty]
    # end
    
	def index
        members = Member.roommate

        turn = (getTime/86400+2).modulo(members.count)
        @member = members[turn]

        duty = {}
        duty[:mini_chart_color]    = ['bgm-lightgreen', 'bgm-orange', 'bgm-bluegray']
        duty[:chart_class]         = ['stats-bar-2', 'stats-line', 'stats-line-2']
        duty[:shit]                = ['아침사와라', '청소 틈틈이 해', '환기 해']
        @duty = duty
    end
    
    private
    def getTime
        Time.new.to_i
    end
end
