class Wahooks < Formula
  desc "CLI for WAHooks — manage WhatsApp connections, webhooks, and messaging"
  homepage "https://github.com/dhruvyad/wahooks"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-arm64"
      sha256 "fb008054b2b370644410f4eb117f40c0bfb0344db12857f003d4433afd8c2c29"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-amd64"
      sha256 "333172e7f2ae17c9eaf1ee5699a47107e425f901bc6af938d5fb115e8ce97b71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-arm64"
      sha256 "0323b638c67989498d6e83ce71c698a0db9893bebd61926e2546c75917080b7f"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-amd64"
      sha256 "da4fefdc3a20cfa0c8b70a5553922531f990f3e7ff56b56bb1ae62d09200c18d"
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
