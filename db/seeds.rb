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
        img: %w(https://mcycd.gov.ae/sites/MCYCDVar/PublishingImages/no_image.gif
                http://i.imgur.com/CUgw6O3.jpg
                https://mcycd.gov.ae/sites/MCYCDVar/PublishingImages/no_image.gif
                https://mcycd.gov.ae/sites/MCYCDVar/PublishingImages/no_image.gif
                https://mcycd.gov.ae/sites/MCYCDVar/PublishingImages/no_image.gif)
}

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
