class GacRedux < Formula
  desc "Short-lived AWS credentials through IAM Identity Center"
  homepage "https://github.com/virtualmadden/gac-redux"
  version "0.2.0-beta.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.2.0-beta.1/gac-redux-0.2.0-beta.1-aarch64-apple-darwin.tar.gz"
      sha256 "70fdf87dfea08a08374a457ab0ed499ee12853318cd7b56c0cdb5617cd57ec49"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.2.0-beta.1/gac-redux-0.2.0-beta.1-x86_64-apple-darwin.tar.gz"
      sha256 "1dee3b09b74e67717210d663d2faf826bd8500fefc1c7413bad5173d66ce7a46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.2.0-beta.1/gac-redux-0.2.0-beta.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7607842fed2d32fdb31988972cb9bfe204dd3fcb978ee7de98174d34dc248e5"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.2.0-beta.1/gac-redux-0.2.0-beta.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9747839e3ebee37034caa12f7fbbed42a576033f7cb4433a3ae4376abd238d8"
    end
  end

  def install
    bin.install "gac"
  end

  test do
    assert_match "gac-redux #{version}", shell_output("#{bin}/gac --version")
  end
end
