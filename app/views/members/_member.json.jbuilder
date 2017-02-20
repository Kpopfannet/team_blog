json.extract! member, :id, :name, :subname, :img, :desc, :favorite, :hate, :wannabe, :birthday, :created_at, :updated_at
json.url member_url(member, format: :json)