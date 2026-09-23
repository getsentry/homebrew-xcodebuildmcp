class Mobilebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/getsentry/MobileBuildMCP"
  license "MIT"
  version "2.7.1"

  on_arm do
    url "https://github.com/getsentry/MobileBuildMCP/releases/download/v2.7.1/mobilebuildmcp-2.7.1-darwin-arm64.tar.gz"
    sha256 "75bb08fbb27306ccab6c52b435d16a39fef01921b49d021142a4bdaa93dbe82b"
  end

  on_intel do
    url "https://github.com/getsentry/MobileBuildMCP/releases/download/v2.7.1/mobilebuildmcp-2.7.1-darwin-x64.tar.gz"
    sha256 "73a57ce96c78887feadbcf0818e7fd6177e6c161462617bfac3e63a0c287ddf3"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "mobilebuildmcp", shell_output("#{bin}/mobilebuildmcp --help")
  end
end
