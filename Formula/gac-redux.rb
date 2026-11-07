class GacRedux < Formula
  desc "Short-lived AWS credentials through IAM Identity Center"
  homepage "https://github.com/virtualmadden/gac-redux"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.3.0/gac-redux-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "c6ee7bd91c4ec56df6d1c80e90a581648d8d06794700b149d40ddd14417f85b0"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.3.0/gac-redux-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "fbe176b6988db778e91e4b5f67691e117fd676483fc263f5841a404dae457367"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.3.0/gac-redux-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d6a9df3a05b727b89f2fde1da3aed71dfecaa30e2e5972bc63dd0db32ed24a5d"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.3.0/gac-redux-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1580536b97d99f32baa8cd2f121ab11d621000ff1ccaf66e90b6f01b18697fc6"
    end
  end

  def install
    bin.install "gac"
  end

  test do
    assert_match "gac-redux #{version}", shell_output("#{bin}/gac --version")
  end
end
