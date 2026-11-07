class GacRedux < Formula
  desc "Short-lived AWS credentials through IAM Identity Center"
  homepage "https://github.com/virtualmadden/gac-redux"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.4.0/gac-redux-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "cd314d66417a6586a2e8c9b9b8341e74f8d50cc37a4bf2aa09230bc389e71f53"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.4.0/gac-redux-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "5df1d39934b157542afd935937707cfd0afa3892389d689022cbb496a4b4dde3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.4.0/gac-redux-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d1c7450aa59e98de281cde5ac11310a8515e38acd20ab05ee9ae94aade9bd68b"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.4.0/gac-redux-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22984f91c0080940b06f0ca224896b717b7d0a597af60cabb9f32fdc56c12834"
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
