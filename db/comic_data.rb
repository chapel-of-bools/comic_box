def get_comic_data
  comic_data = {
    "dccomics"=>[{
      :title=>"Swamp Thing",
      :issue_no=>"12",
      :authors=>"Scott Snyder",
      :artists=>"Yanick Paquette",
      :year=>"2012",
      :cover_url=>"https://multiversitystatic.s3.amazonaws.com/uploads/2012/07/swampthing12.jpg",
      :publisher=>"DC Comics"
      },
      {
      :title=>"Watchmen",
      :issue_no=>"1",
      :authors=>"Alan Moore",
      :artists=>"Dave Gibbons",
      :year=>"1986",
      :cover_url=>"https://upload.wikimedia.org/wikipedia/en/a/a2/Watchmen,_issue_1.jpg",
      :publisher=>"DC Comics"
      }
    ],
    "marvelcomics"=>[{
      :title=>"Deadpool",
      :issue_no=>"13",
      :authors=>"Gerry Duggan, Charles Soule, David Walker",
      :artists=>"Francisco Herrera, Elmo Bondoc, Paco Diaz Luque, Jacopo Camagni",
      :year=>"2015",
      :cover_url=>"http://i.annihil.us/u/prod/marvel/i/mg/8/70/573a2aca62f10/detail.jpg",
      :publisher=>"Marvel Comics"
      },
      {
      :title=>"Infernal Man-Thing",
      :issue_no=>"1",
      :authors=>"Steve Gerber",
      :artists=>"Kevin Nowlan",
      :year=>"2012",
      :cover_url=>"https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/27115/APR120649_1._SX640_QL80_TTD_.jpg",
      :publisher=>"Marvel Comics"
      }
    ],
    }
      return comic_data
    end
