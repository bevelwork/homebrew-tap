class QuickWatch < Formula
  desc "Simple Go CLI tool for monitoring URLs and services with configurable alerts and webhook notifications"
  homepage "https://github.com/bevelwork/quick_watch"
  url "https://github.com/bevelwork/quick_watch/archive/refs/tags/null.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
