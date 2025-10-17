class QuickWatch < Formula
  desc "Simple Go CLI tool for monitoring URLs and services with configurable alerts and webhook notifications"
  homepage "https://github.com/bevelwork/quick_watch"
  url "https://github.com/bevelwork/quick_watch/archive/refs/tags/1.11.20251016.tar.gz"
  sha256 "446e34a195adc2061de6c4aeecb78049dd129e4684968904ee48e9b0de7c9b28"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
