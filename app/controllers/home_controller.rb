class HomeController < ApplicationController

def index
  @providers = {Facebook: :facebook, Twitter: :twitter, Github: :github, Google: :google_oauth2, "Last.fm" => "lastfm", Linkedin: :linkedin, Tumblr: :tumblr, Flickr: :flickr, StackExchange: :stackexchange}
end

end