class QuickWatch < Formula
  desc "Simple Go CLI tool for monitoring URLs and services with configurable alerts and webhook notifications"
  homepage "https://github.com/bevelwork/quick_watch"
  url "https://github.com/bevelwork/quick_watch/archive/refs/tags/1.20.20251018.tar.gz"
  sha256 "c25136bca08a8ab80648f1d37e7af185cd46d92bd0a423973e9179b1c8e9f957"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
