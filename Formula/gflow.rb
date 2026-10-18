class Gflow < Formula
  desc "gflow - a customized gitflow workflow CLI"
  homepage "https://github.com/jopmiddelkamp/gflow"
  version "6.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-aarch64"
      sha256 "145973daa7eb53f4dddbf6e309b12446d34d23e47d67a83e00677ceef2eb8b3c"
    else
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-x86_64"
      sha256 "70ec5f1874e51990780f2885984a64e73e72a36131739bc43ca64fa3412a3e2d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "gflow"
  end
end
