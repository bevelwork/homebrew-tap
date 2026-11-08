class QuickPipreqs < Formula
  desc "Quickly generate requirements.txt from Python projects"
  homepage "https://github.com/bevelwork/quick_pipreqs"
  url "https://github.com/bevelwork/quick_pipreqs/archive/refs/tags/.tar.gz"
  sha256 "8e8052a0c2d1b3568998cc84bea4b37c23a7db71d547cf8f34b6b109f2f55a30"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/quick_pipreqs"
  end

  test do
    system "false"
  end
end
