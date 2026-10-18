class Gflow < Formula
  desc "gflow - a customized gitflow workflow CLI"
  homepage "https://github.com/jopmiddelkamp/gflow"
  version "6.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-aarch64"
      sha256 "0f15e90147803d830764f69ba0458fb8d67dd20ff96766345da0ba958e644733"
    else
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-x86_64"
      sha256 "66e22ba8caaaa94d2e692d8fc1b09703824c583160cc08a92a8ba465d99f8fe7"
    end
  end

  def install
    bin.install stable.url.split("/").last => "gflow"
  end
end
