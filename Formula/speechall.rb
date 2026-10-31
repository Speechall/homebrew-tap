class Speechall < Formula
  desc "CLI for speech-to-text transcription via the Speechall API"
  homepage "https://github.com/Speechall/speechall-cli"
  version "2.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.3.0/speechall-2.3.0-macos-arm64.tar.gz"
      sha256 "c5f82b428cbbe87e337d105d62cf16cbfe7e50d25e860860a8f92ae6bd256325"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.3.0/speechall-2.3.0-macos-amd64.tar.gz"
      sha256 "ae5548e56266fe38ea105ace82a8703d944c743898934cb1f8df7c7bfdd3a6ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.3.0/speechall-2.3.0-linux-arm64.tar.gz"
      sha256 "aab20d424f0f8df17ef77c425eafd3e4af9f099b8516428b102c574b1e341c52"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.3.0/speechall-2.3.0-linux-amd64.tar.gz"
      sha256 "75c5d8fd6e6fb0ca89a30d035db98bb42b376fedc118ba48e7e1894bbd04245a"
    end
  end

  def install
    bin.install "speechall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/speechall --version")
  end
end
