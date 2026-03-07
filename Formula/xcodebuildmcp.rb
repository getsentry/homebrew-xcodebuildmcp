class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/getsentry/XcodeBuildMCP"
  license "MIT"
  version "2.2.0"

  on_arm do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.2.0/xcodebuildmcp-2.2.0-darwin-arm64.tar.gz"
    sha256 "f801bcae1064a45666a9669a3ca00a18afdd3a024ccea5f7e95620c973dec741"
  end

  on_intel do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.2.0/xcodebuildmcp-2.2.0-darwin-x64.tar.gz"
    sha256 "874bf68f1492584c3cc9300feb7a94404acf62544f99f689c34478b7fcc0a43d"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
