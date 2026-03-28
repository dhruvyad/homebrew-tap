class Wahooks < Formula
  desc "CLI for WAHooks — manage WhatsApp connections, webhooks, and messaging"
  homepage "https://github.com/dhruvyad/wahooks"
  version "0.14.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-arm64"
      sha256 "3b3ff46a91011a0ec01c94aa4df2fa51dbcee1e1d9495655f2e7238ae6afcc3c"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-amd64"
      sha256 "d74dccce0791f1dc8a4c7626098860844bebc891cb6986310d19d0e3089a39b6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-arm64"
      sha256 "1960bc4edea7650344d997c82b24f3ad98f1a42e3837d7d896d852a0de1a747c"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-amd64"
      sha256 "9115bda20b5a3cb6417a89eba6c82de746fcacda7627d3a8e9ac180eabe4c6ca"
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
