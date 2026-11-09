class GacRedux < Formula
  desc "Short-lived AWS credentials through IAM Identity Center"
  homepage "https://github.com/virtualmadden/gac-redux"
  version "0.5.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.5.1/gac-redux-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "2b0bd6f915c01acc6cd7014e27a4ff531ac016f74894d089102955b1e8c50d89"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.5.1/gac-redux-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "981b0d1e7730a41791a4a72d8bafcd27aa9ba00685ef75938ba86e9bc83482a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.5.1/gac-redux-0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9612168266cfdb0d27d5825c031bf6231c1eec4d4d6d0a582b059d1428eeb3a2"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.5.1/gac-redux-0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4216e2c0d34ae50d64ba20950fe723f1a1484f69ed20c43c28632205be3077c0"
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
