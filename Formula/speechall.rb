class Speechall < Formula
  desc "CLI for speech-to-text transcription via the Speechall API"
  homepage "https://github.com/Speechall/speechall-cli"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.1.0/speechall-2.1.0-macos-arm64.tar.gz"
      sha256 "035a0d57628f69e0398d0b44769519c04a94946efe3e0e595a87ca0e79399426"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.1.0/speechall-2.1.0-macos-amd64.tar.gz"
      sha256 "61c210d54d3a1fece878b820530ad55b5b15303d89a354ac38979f560c96f36a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.1.0/speechall-2.1.0-linux-arm64.tar.gz"
      sha256 "626b1a34aee2656cef60b5216bca90684b9dbb401a00f3372a019e8997aac875"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.1.0/speechall-2.1.0-linux-amd64.tar.gz"
      sha256 "892eebd51a4278acf281f9af9be2e4fd221c2ce329737049456a985384a2f4e7"
    end
  end

  def install
    bin.install "speechall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/speechall --version")
  end
end
