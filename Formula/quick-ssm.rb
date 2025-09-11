class QuickSsm < Formula
  desc "Quickly connect to AWS servers from the cli. No GUI or ssh needed"
  homepage "https://github.com/bevelwork/quick_ssm"
  url "https://github.com/bevelwork/quick_ssm/archive/refs/tags/1.27.20250911.tar.gz"
  sha256 "8a60dbd6c2d52b21f3d27b5bdb79a4b35d0384826df3e2f99d147019be538ffc"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
