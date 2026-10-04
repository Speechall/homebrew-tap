class Speechall < Formula
  desc "CLI for speech-to-text transcription via the Speechall API"
  homepage "https://github.com/Speechall/speechall-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v1.0.0/speechall-1.0.0-macos-arm64.tar.gz"
      sha256 "fd38a058456e772ffb83ceeb9bb733103746012f487e4a065b04dd06bf6d4412"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v1.0.0/speechall-1.0.0-macos-amd64.tar.gz"
      sha256 "b1a2a93e812a4e44bceedf909e7b9e7575490602d955896b341d700449d43bff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v1.0.0/speechall-1.0.0-linux-arm64.tar.gz"
      sha256 "e84e060cf622a83969abbb2a95258f94fff4353b16db26239d9291467b9737af"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v1.0.0/speechall-1.0.0-linux-amd64.tar.gz"
      sha256 "2a5bf3694f19c1f8ab7e6276a830705cbdfd77d9583ec46e2fe10a2575acab24"
    end
  end

  def install
    bin.install "speechall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/speechall --version")
  end
end
