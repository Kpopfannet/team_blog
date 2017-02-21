class HomeController < ApplicationController
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
