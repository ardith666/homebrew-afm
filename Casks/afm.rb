cask "afm" do
  version "1.1.0"
  sha256 "b470ab606b93cb1bb3b23e337daf2387da9251cf8bd3ab12bc82a99f23429f34"

  url "https://github.com/ardith666/afm/releases/download/v#{version}/AFM-#{version}-arm64.dmg",
      verified: "github.com/ardith666/afm/"
  name "AFM"
  desc "Apple Foundation Model Bridge — OpenAI-Compatible Local AI Server for macOS"
  homepage "https://ardith666.github.io/afm/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "AFM.app"

  uninstall quit: "com.ardith666.afm"

  zap trash: [
    "~/Library/Application Support/AFM",
    "~/Library/Caches/com.ardith666.afm",
    "~/Library/Preferences/com.ardith666.afm.plist",
  ]
end
