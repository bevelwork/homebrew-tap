class QuickWatch < Formula
  desc "Simple Go CLI tool for monitoring URLs and services with configurable alerts and webhook notifications"
  homepage "https://github.com/bevelwork/quick_watch"
  url "https://github.com/bevelwork/quick_watch/archive/refs/tags/1.4.20251015.tar.gz"
  sha256 "REPLACE_WITH_REAL_SHA256"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
