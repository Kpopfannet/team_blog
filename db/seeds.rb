# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#
# Create Member seeds
members = {
        name:       %w(함상빈         김용현         송서하       장종현        서재은),
        su:         %w(함록수          독기        팝핀송        안알랴줌ㅋ       재군),
        favorite:   %w(업뎃하셈       여자친구       고기고기      업뎃하셈      업뎃하셈),
        wannabe:    %w(어            오박사         잉여킹       잉여킹        잉여킹),
        hate:       %w(그분           세금        나싫어하는거     송서하         시간),
        birthday:   %w(1991-10-04   1992-11-11   1993-01-09  1993-12-13 1993-03-25),
        img: %w(/members/sangbin_profile.png
                /members/yonghyon_profile.jpeg
                /members/soeha_profile.jpeg
                /members/jonghyeon_profile.jpg
                /members/jeaun_profile.jpg)
}
# member default img => 'https://mcycd.gov.ae/sites/MCYCDVar/PublishingImages/no_image.gif'

i = 0
members[:name].each do |name|
    su          = members[:su][i]
    favorite    = members[:favorite][i]
    wannabe     = members[:wannabe][i]
    hate        = members[:hate][i]
    birthday    = members[:birthday][i]
    img         = members[:img][i]

    Member.create(name: name, subname: su, favorite: favorite, wannabe: wannabe, hate: hate, birthday: birthday, img: img)
    i += 1
end


#
# Create Roll seeds
rolls = [
    ['leader', %w(함상빈)],
    ['co-founder', %w(김용현 송서하 장종현 서재은)],
    ['developer', %w(김용현 송서하)],
    ['marketer', %w(장종현)],
    ['designer', %w(서재은)]
]

rolls.each do |set|
    set.last.each do |name|
        Roll.create(name: set.first, member: Member.where(name: name).take)
    end
end


#
# Create Category seedss
categories = %w(StarStream news quote HearFan inside)

categories.each do |name|
    Category.create(name: name)
end


#
# Skip Article seeds, but ipsum data
title_ipsum     = ('a'..'z').to_a.join
preview_ipsum   = ('a'..'z').to_a.join + ('A'..'Z').to_a.join
content_ipsum   = '<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p style=\"text-align: right;\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>&nbsp;</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p style=\"text-align: center;\">abcdefghijklmnopqrstuvwxyz</p>\r\n<p style=\"text-align: center;\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p style=\"text-align: center;\">abcdefghijklmnopqrstuvwxyz</p>\r\n<p style=\"text-align: center;\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p style=\"text-align: center;\">abcdefghijklmnopqrstuvwxyz</p>\r\n<p style=\"text-align: center;\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\r\n<p>abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ</p>'

Member.all.each do |member|
    Article.create( member: member, category: Category.first, template: 'general', title: "[#{member.name}] " + title_ipsum, preview: preview_ipsum, photo: nil, content: content_ipsum )
end


#
# Skip Blog seeds, but ipsum data
Blog.create(content: content_ipsum, photo: nil)





























Article.create!([
  {member_id: 1, category_id: 1, template: "general", thumbnail: nil, title: "[함상빈] abcdefghijklmnopqrstuvwxyz", preview: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", photo: nil, content: "<blockquote>\r\n<h1 style=\"text-align: center;\"><em>모두의 즐거운 덕질을 위하여~!</em></h1>\r\n</blockquote>"},
  {member_id: 2, category_id: 1, template: "general", thumbnail: nil, title: "[김용현] abcdefghijklmnopqrstuvwxyz", preview: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", photo: nil, content: "<blockquote>\r\n<p style=\"text-align: center;\"><em>이래뵈도 이 문장은 적어도 50번 다시 쓰여졌습니다...</em></p>\r\n</blockquote>"},
  {member_id: 3, category_id: 1, template: "general", thumbnail: nil, title: "[송서하] abcdefghijklmnopqrstuvwxyz", preview: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", photo: nil, content: "<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p style=\\\"text-align: right;\\\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p style=\\\"text-align: center;\\\">abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p style=\\\"text-align: center;\\\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p style=\\\"text-align: center;\\\">abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p style=\\\"text-align: center;\\\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p style=\\\"text-align: center;\\\">abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p style=\\\"text-align: center;\\\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ</p>"},
  {member_id: 5, category_id: 1, template: "general", thumbnail: nil, title: "[서재은] abcdefghijklmnopqrstuvwxyz", preview: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", photo: nil, content: "<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p style=\\\"text-align: right;\\\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p style=\\\"text-align: center;\\\">abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p style=\\\"text-align: center;\\\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p style=\\\"text-align: center;\\\">abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p style=\\\"text-align: center;\\\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p style=\\\"text-align: center;\\\">abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p style=\\\"text-align: center;\\\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ</p>"},
  {member_id: 4, category_id: 1, template: "general", thumbnail: nil, title: "[장종현] abcdefghijklmnopqrstuvwxyz", preview: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", photo: nil, content: "<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p style=\\\"text-align: right;\\\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p style=\\\"text-align: center;\\\">abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p style=\\\"text-align: center;\\\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p style=\\\"text-align: center;\\\">abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p style=\\\"text-align: center;\\\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p style=\\\"text-align: center;\\\">abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p style=\\\"text-align: center;\\\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ</p>"}
])
Blog.create!([
  {content: "<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p style=\\\"text-align: right;\\\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>&nbsp;</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p style=\\\"text-align: center;\\\">abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p style=\\\"text-align: center;\\\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p style=\\\"text-align: center;\\\">abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p style=\\\"text-align: center;\\\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p style=\\\"text-align: center;\\\">abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p style=\\\"text-align: center;\\\">ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyz</p>\\r\\n<p>ABCDEFGHIJKLMNOPQRSTUVWXYZ</p>\\r\\n<p>abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ</p>", photo: nil}
])
Category.create!([
  {name: "StarStream"},
  {name: "news"},
  {name: "quote"},
  {name: "HearFan"},
  {name: "inside"}
])
Member.create!([
  {name: "함상빈", subname: "Mickey", img: "/members/sangbin_profile.png", desc: "하루에 '어!' 를 몇 번 하는지 세어 본 결과는 내일 업데이트 하겠습니다.", favorite: "어", hate: "그분", wannabe: "어", birthday: "1991-10-04 00:00:00", join: "2017-02-21 00:00:00"},
  {name: "김용현", subname: "독기", img: "/members/yonghyon_profile.jpeg", desc: "독기는 이해할 수 없는 학창시절을 거쳐 독기를 품고 서울로 올라와 동국대학교 영문학과에 진학했지만,\r\n 역시 이해할 수 없는 딴짓을 하다가 대표의 꾐에빠져 지금은 스타스트림의 개발팀에서 독기를 품고 개발을 하고있습니다.\r\n 여러번의 프로젝트와 사업을 거쳐온 그는 버거킹 슈프림치즈 세트를 사랑하며, 아이스 아메리카노가 없이는 하루를 시작할 수 없는 요상한 습성을 가지고 있습니다.", favorite: "돈 쓰고 싶은 일", hate: "돈 써야 되는 일", wannabe: "돈 써도 되는 사람", birthday: "1992-11-11 00:00:00", join: "2017-02-21 00:00:00"},
  {name: "송서하", subname: "팝핀송", img: "/members/soeha_profile.jpeg", desc: nil, favorite: "고기고기", hate: "나싫어하는거", wannabe: "잉여킹", birthday: "1993-01-09 00:00:00", join: "2017-02-21 00:00:00"},
  {name: "서재은", subname: "재군", img: "/members/jeaun_profile.jpg", desc: nil, favorite: "업뎃하셈", hate: "시간", wannabe: "잉여킹", birthday: "1993-03-25 00:00:00", join: "2017-02-21 00:00:00"},
  {name: "장종현", subname: "안알랴줌ㅋ", img: "/members/jonghyeon_profile.jpg", desc: nil, favorite: "업뎃하셈", hate: "송서하", wannabe: "잉여킹", birthday: "1993-12-13 00:00:00", join: "2017-02-21 00:00:00"}
])
Roll.create!([
  {member_id: 1, name: "leader"},
  {member_id: 2, name: "co-founder"},
  {member_id: 3, name: "co-founder"},
  {member_id: 4, name: "co-founder"},
  {member_id: 5, name: "co-founder"},
  {member_id: 2, name: "developer"},
  {member_id: 3, name: "developer"},
  {member_id: 4, name: "marketer"},
  {member_id: 5, name: "designer"}
])
