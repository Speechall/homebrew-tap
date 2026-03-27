class Speechall < Formula
  desc "CLI for speech-to-text transcription via the Speechall API"
  homepage "https://github.com/Speechall/speechall-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v0.1.1/speechall-0.1.1-macos-arm64.tar.gz"
      sha256 "332e800693c39b2edd70499d431e559b416aa6370de96097e1ad18121207ae56"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v0.1.1/speechall-0.1.1-macos-amd64.tar.gz"
      sha256 "0a92a10907bec1900d3dd60cc9f0f23fd838801fb7ea791e68960b02aee3259e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v0.1.1/speechall-0.1.1-linux-arm64.tar.gz"
      sha256 "8cbabb9c00b007d3a7e11fb71617166034e4cfb1e8e497fe0f817600f0c6373b"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v0.1.1/speechall-0.1.1-linux-amd64.tar.gz"
      sha256 "a3512fba27f84592892092928eae4a5e6a18e35778fe886e78b130fc8a8a915e"
    end
  end

  def install
    bin.install "speechall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/speechall --version")
  end
end
