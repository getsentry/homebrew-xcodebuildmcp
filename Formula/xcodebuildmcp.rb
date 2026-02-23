class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/getsentry/XcodeBuildMCP"
  license "MIT"
  version "2.1.0"

  on_arm do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.1.0/xcodebuildmcp-2.1.0-darwin-arm64.tar.gz"
    sha256 "e819a2e006cb7d5d1f615b3fc7ef619fd5a3bebce4e696304ccec8bbefcf8fb2"
  end

  on_intel do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.1.0/xcodebuildmcp-2.1.0-darwin-x64.tar.gz"
    sha256 "45bf595ba52dd27f1a0c2b49292315b61e683a1f595aa31b771c89d12821ff3a"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
