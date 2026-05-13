class Farscry < Formula
  desc "Vision APIs describe. farscry gives coordinates. Agents that act, not guess."
  homepage "https://farscry.dev"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/teles-forge/farscry/releases/download/v#{version}/farscry-aarch64-apple-darwin.tar.gz"
      sha256 "b394dfcddbd9e33e50f1ee6f44637cb452190e54a7a7d428d80eeedf963c769a"
    end
  end

  def install
    bin.install "farscry-aarch64-apple-darwin/farscry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/farscry --version 2>&1")
  end
end
