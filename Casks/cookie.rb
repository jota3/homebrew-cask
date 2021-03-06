cask "cookie" do
  version "6.1.1"
  sha256 "9b069460c85d6d49c26288f56ce0e74e9c65d589db2660aa50b69f5aa4c98e41"

  url "https://sweetpproductions.com/products/cookieapp/Cookie.dmg"
  appcast "https://sweetpproductions.com/products/cookieapp/appcast.xml"
  name "Cookie"
  homepage "https://sweetpproductions.com/"

  depends_on macos: ">= :mojave"

  app "Cookie.app"

  zap trash: [
    "~/Library/Application Scripts/com.sweetpproductions.Cookie5",
    "~/Library/Containers/com.sweetpproductions.Cookie5",
    "~/Library/Preferences/com.sweetpproductions.Cookie5.plist",
    "~/Library/Application Scripts/com.sweetpproductions.CookieApp",
    "~/Library/Containers/com.sweetpproductions.CookieApp",
    "~/Library/Preferences/com.sweetpproductions.CookieApp.plist",
  ]
end
