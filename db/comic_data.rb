def get_comic_data
  comic_data = {
    "PUBLISHERNAME"=>[{
      :title=>"TITLE",
      :issue_no=>"ISSUENO",
      :authors=>"AUTHORS",
      :artists=>"ARTISTS",
      :year=>"YEAR",
      :cover_url=>"COVERURL",
      :publisher=>current_publisher
      }]
     }
  return comic_data
end
