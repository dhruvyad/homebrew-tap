class Wahooks < Formula
  desc "CLI for WAHooks — manage WhatsApp connections, webhooks, and messaging"
  homepage "https://github.com/dhruvyad/wahooks"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-arm64"
      sha256 "eafd8b65cbe89dc61c24380b15c0889f1d851b3ac1078eeda11a9fa4b48cdb26"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-amd64"
      sha256 "57f68fdc1f212346e11e74dc2321ac6c8bb8972bb5681ac5ace1727d0e0041cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-arm64"
      sha256 "11f9cc296796d616830709fe550be57efe912dca0cae4ed22274aee33abad1fd"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-amd64"
      sha256 "8d2b1fcaf5380d80ab3e97e41bf7a720e75b440bfadc02c43716fd2cc9e95b1d"
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
