class QuickSsm < Formula
  desc "Quickly connect to AWS servers from the cli. No GUI or ssh needed"
  homepage "https://github.com/bevelwork/quick_ssm"
  url "https://github.com/bevelwork/quick_ssm/archive/refs/tags/1.35.20251008.tar.gz"
  sha256 "ff80fe5ec4620b36ee84ae1a0a9adc6efb452d82365724cd2a4cea9474b8c007"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
