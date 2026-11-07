class GacRedux < Formula
  desc "Short-lived AWS credentials through IAM Identity Center"
  homepage "https://github.com/virtualmadden/gac-redux"
  version "0.2.0-beta.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.2.0-beta.2/gac-redux-0.2.0-beta.2-aarch64-apple-darwin.tar.gz"
      sha256 "843cde0b0e41b6f92fa42a8e18c28f1ebcec19103712873e035d0221e988e8bd"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.2.0-beta.2/gac-redux-0.2.0-beta.2-x86_64-apple-darwin.tar.gz"
      sha256 "764dbd42fb4091e9f391ac557ebc16d2b83f89a953ff17939184dfeb7f78e8c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.2.0-beta.2/gac-redux-0.2.0-beta.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5e0cd4068e4ad6f04ff4a0b8471f8ecbc621156bbd989b5f997de78cd3b2251"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.2.0-beta.2/gac-redux-0.2.0-beta.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "304632c83a8d8b0633f14af90bcd3dd367754d22cf8902b01ba6d2b79cbc208d"
    end
  end

  def install
    bin.install "gac"
  end

  test do
    assert_match "gac-redux #{version}", shell_output("#{bin}/gac --version")
  end
end
