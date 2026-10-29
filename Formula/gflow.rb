class Gflow < Formula
  desc "gflow - a customized gitflow workflow CLI"
  homepage "https://github.com/middelkampdev/gflow"
  version "8.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/middelkampdev/gflow/releases/download/v#{version}/gflow-macos-aarch64"
      sha256 "cf00869e7c0808d62ecebbfd88ec2a96041bc3c11978a8000464f56137c9628c"
    else
      url "https://github.com/middelkampdev/gflow/releases/download/v#{version}/gflow-macos-x86_64"
      sha256 "5a163c8b12c1e09e700433a22e38dbb06045a1012483668b514b111f4faf7eff"
    end
  end

  def install
    bin.install stable.url.split("/").last => "gflow"
  end
end
