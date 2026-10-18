class Gflow < Formula
  desc "gflow - a customized gitflow workflow CLI"
  homepage "https://github.com/jopmiddelkamp/gflow"
  version "6.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-aarch64"
      sha256 "6606011016756805bfba26a8e0f7b0d1e823fed51f71c508424f314bb0ed4db4"
    else
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-x86_64"
      sha256 "343c28a0780b743b40604c125c620b4f5cc52f39a992e1a358c9f9d77df79826"
    end
  end

  def install
    bin.install stable.url.split("/").last => "gflow"
  end
end
