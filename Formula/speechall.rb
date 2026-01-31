class Speechall < Formula
  desc "CLI for speech-to-text transcription via the Speechall API"
  homepage "https://github.com/Speechall/speechall-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v0.1.0/speechall-0.1.0-macos-arm64.tar.gz"
      sha256 "40f442fe204aec5a0acec1e516ba564db94ae11aef21d3b39d2850cc4df3216d"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v0.1.0/speechall-0.1.0-macos-amd64.tar.gz"
      sha256 "b57ca42e52ba12400a1593b440700ba6e8af68e9c00001163a9b627543fed095"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v0.1.0/speechall-0.1.0-linux-arm64.tar.gz"
      sha256 "1d77523b7b4df050e9fbbfc4b539ea9961e08eba9a2d0319ffc0ef4290eee802"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v0.1.0/speechall-0.1.0-linux-amd64.tar.gz"
      sha256 "1a27dbbb3112810227e21d8db7ea69b499afe8c2539d3b824bd9c8ab730201ee"
    end
  end

  def install
    bin.install "speechall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/speechall --version")
  end
end
