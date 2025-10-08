class QuickPipreqs < Formula
  desc "Quickly generate requirements.txt from Python projects"
  homepage "https://github.com/bevelwork/quick_pipreqs"
  url "https://github.com/bevelwork/quick_pipreqs/archive/refs/tags/1.8.20251007.tar.gz"
  sha256 "7715e00ac77d2afe987c75f1080b8f61c08f6e5eb7110832e6d71f87fa9c5216"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/quick_pipreqs"
  end

  test do
    system "false"
  end
end
