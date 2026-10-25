class Gflow < Formula
  desc "gflow - a customized gitflow workflow CLI"
  homepage "https://github.com/middelkampdev/gflow"
  version "7.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/middelkampdev/gflow/releases/download/v#{version}/gflow-macos-aarch64"
      sha256 "27641a9c2b787aeca10cdd6c7e3cf5ffc2d5bf9e2f1c436f585046bda4f83cbd"
    else
      url "https://github.com/middelkampdev/gflow/releases/download/v#{version}/gflow-macos-x86_64"
      sha256 "ef924a16c87ab02e29ed290242d74a9fcc434ba7f44adf21578e7d7f985d6802"
    end
  end

  def install
    bin.install stable.url.split("/").last => "gflow"
  end
end
