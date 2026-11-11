cask "afm" do
  version "1.3.1"
  sha256 "9297911c56bbd2d242f5bcab4e02ff42fafd47efc29c53d20270dcb54bd6d547"

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
