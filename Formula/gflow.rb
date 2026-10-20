class Gflow < Formula
  desc "gflow - a customized gitflow workflow CLI"
  homepage "https://github.com/middelkampdev/gflow"
  version "6.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/middelkampdev/gflow/releases/download/v#{version}/gflow-macos-aarch64"
      sha256 "90bed192df7d3b6fb6f74615ce32864b54c452b2a028fcdce7eb6c4aef3e6ff1"
    else
      url "https://github.com/middelkampdev/gflow/releases/download/v#{version}/gflow-macos-x86_64"
      sha256 "280f194cbc0708d0350a1d46d6f361a7c87a0e323cadfb516c8367900a2195bd"
    end
  end

  def install
    bin.install stable.url.split("/").last => "gflow"
  end
end
