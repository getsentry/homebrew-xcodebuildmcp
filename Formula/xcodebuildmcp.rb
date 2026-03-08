class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/getsentry/XcodeBuildMCP"
  license "MIT"
  version "2.2.1"

  on_arm do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.2.1/xcodebuildmcp-2.2.1-darwin-arm64.tar.gz"
    sha256 "1fe0546c83e6feb0ffa7648d1cb657b62e460f8462999db88bff57fd6d116d10"
  end

  on_intel do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.2.1/xcodebuildmcp-2.2.1-darwin-x64.tar.gz"
    sha256 "c5576d0bd8ef5876156dcb84ae1694d42d823815695e68909eb9b0f044b155dd"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
