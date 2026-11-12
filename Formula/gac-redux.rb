class GacRedux < Formula
  desc "Short-lived AWS credentials through IAM Identity Center"
  homepage "https://github.com/virtualmadden/gac-redux"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.6.0/gac-redux-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "878d776cc98ffddf02229d6f09c4f98099d6849686945ef418caa1834a390f00"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.6.0/gac-redux-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "6c6e4fc353b3c9ce87c850b09affd7be19d84029f28d3214247b08e9cd5c8157"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.6.0/gac-redux-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "39dc086e2ae87812df16ebaca543e2c5a2c50028897200e264f303de00a579b1"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.6.0/gac-redux-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4492bd2c0da5bb8fce9ac26c9d1f84baec3a5f54f562169bb3f0089b0d1268c0"
    end
  end

  def install
    bin.install "gac"
    man1.install Dir["man/*.1"]
    bash_completion.install "completions/gac.bash" => "gac"
    zsh_completion.install "completions/_gac"
    fish_completion.install "completions/gac.fish"
  end

  test do
    assert_match "gac-redux #{version}", shell_output("#{bin}/gac --version")
    assert_path_exists man1/"gac.1"
    assert_path_exists zsh_completion/"_gac"
  end
end
