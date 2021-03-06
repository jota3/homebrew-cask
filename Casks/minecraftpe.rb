cask "minecraftpe" do
  version "1.14.31"
  sha256 "a6ed7834485b2631c72fcbab2181da1378abeb368b28b0cf9751e486fc5f46e5"

  # meedownloads.azureedge.net/ was verified as official when first introduced to the cask
  url "https://meedownloads.azureedge.net/retailbuilds/MacOS/Minecraft_Education_Edition.dmg"
  appcast "https://minecrafteducation.zendesk.com/hc/en-us/articles/360001447967-What-s-New-in-Minecraft-Education-Edition",
          must_contain: version.chomp(".0")
  name "Minecraft Education Edition"
  homepage "https://education.minecraft.net/"

  depends_on macos: ">= :sierra"

  app "minecraftpe.app"
end
