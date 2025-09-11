class QuickSsm < Formula
  desc "Quickly connect to AWS servers from the cli. No GUI or ssh needed"
  homepage "https://github.com/bevelwork/quick_ssm"
  url "https://github.com/bevelwork/quick_ssm/archive/refs/tags/v1.26.20250911.tar.gz"
  sha256 "ffb0667ce50108bc88014f392d4e1c13d80b795bd1a771efb967c1846ab8c5ed"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
