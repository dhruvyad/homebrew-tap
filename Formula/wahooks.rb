class Wahooks < Formula
  desc "CLI for WAHooks — manage WhatsApp connections, webhooks, and messaging"
  homepage "https://github.com/dhruvyad/wahooks"
  version "0.12.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-arm64"
      sha256 "a2ddcd50dde5fb8b559c6f05d656f553e0c391da336919cbb36f8f5b455574da"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-amd64"
      sha256 "2d84cc8bed22c46109ab72c4b42f1d10b16a253e61eb62331601c11c7467b27a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-arm64"
      sha256 "7f436746ef1526f922d2543509ac394a074e2012a3e7c74f94bd0c4614a8aae4"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-amd64"
      sha256 "9d885574aab4faeb3f6e1d04b02e06c5d410dfed4ac49adf7e6b10fc846a95ee"
    end
  end
  def install
    binary = Dir["wahooks-*"].first || "wahooks"
    bin.install binary => "wahooks"
  end
  test do
    assert_match "WAHooks CLI", shell_output("#{bin}/wahooks --help")
  end
end
