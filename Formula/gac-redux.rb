class GacRedux < Formula
  desc "Short-lived AWS credentials through IAM Identity Center"
  homepage "https://github.com/virtualmadden/gac-redux"
  version "0.2.0-beta.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.2.0-beta.2/gac-redux-0.2.0-beta.2-aarch64-apple-darwin.tar.gz"
      sha256 "82a8ab33be9ed7a11ef1383a2bbadd45341fae34de63e7a76848e090a468346f"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.2.0-beta.2/gac-redux-0.2.0-beta.2-x86_64-apple-darwin.tar.gz"
      sha256 "a5f6eefc743cae806451082829ba3619fe43d5ae67ebccd13a1489c9a088e31a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.2.0-beta.2/gac-redux-0.2.0-beta.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fad8f90eea9b5c4611c5cfec4506752be2269a1abb465afb1045bf8cef4b5161"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.2.0-beta.2/gac-redux-0.2.0-beta.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee7f08cb6c734da21d3ff3a8be57eb803494b0fbb843d24483413ca285157e94"
    end
  end

  def install
    bin.install "gac"
  end

  test do
    assert_match "gac-redux #{version}", shell_output("#{bin}/gac --version")
  end
end
