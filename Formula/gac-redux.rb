class GacRedux < Formula
  desc "Short-lived AWS credentials through IAM Identity Center"
  homepage "https://github.com/virtualmadden/gac-redux"
  version "0.5.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.5.2/gac-redux-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "55b33944a726e7cdb2badd2c8022e3fd4bb38d50265bf3d1d7fdeb2e096e1e39"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.5.2/gac-redux-0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "42eeec61e68be6cf84753e08a9e0e09f51cba92e1b0fded4207b2e0d950eef1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.5.2/gac-redux-0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dba429aa8f46f50bc4349245a27b89c43ff00173548570ead487a9538c0cdfec"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.5.2/gac-redux-0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e096e143c3334c4647acbe36b36859da780809915af6b5529abbace79a8f28d7"
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
