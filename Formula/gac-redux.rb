class GacRedux < Formula
  desc "Short-lived AWS credentials through IAM Identity Center"
  homepage "https://github.com/virtualmadden/gac-redux"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.5.0/gac-redux-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "686da71d4ebfab6941fc3e96caaf7cac0af028b0c7f04360ea70d8afb29dc416"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.5.0/gac-redux-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "9732505e90542455ce20c2905a69c7cbdb9e2dedea1817567955367498626240"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.5.0/gac-redux-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3cec9048484c16045e985506cc2c3cdc45555dce2ba305b71e97959c804bafd2"
    end
    on_intel do
      url "https://github.com/virtualmadden/gac-redux/releases/download/v0.5.0/gac-redux-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b8081196771ac03bdbb2a2388fb7db7bd15ee5c98aefcfbd08eba9d9acc3ee5"
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
