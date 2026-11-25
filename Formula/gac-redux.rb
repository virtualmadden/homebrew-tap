class GacRedux < Formula
  desc "Short-lived AWS credentials through IAM Identity Center"
  homepage "https://github.com/virtualmadden/gac-redux"
  version "0.6.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.6.1/gac-redux-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "3641b37b3acf9c29eb3bec141b949e69ab6cf719d7ac967c1a2bbe1ed68d5c1e"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.6.1/gac-redux-0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "4057216ae2dc1e701cae44a15c72f3edf27302574285e352fcff07bc5867a461"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.6.1/gac-redux-0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc7f3fc9ad0949c54cbb74997eee56593a2120beeec2d682b4f465187f63dfbb"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.6.1/gac-redux-0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "181060ab48fd47d6674a22c9d8fc254988f159cdc8a9be874c1bcd185f91c928"
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
