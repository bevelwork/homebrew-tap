class QuickPipreqs < Formula
  desc "Quickly generate requirements.txt from Python projects"
  homepage "https://github.com/bevelwork/quick_pipreqs"
  url "https://github.com/bevelwork/quick_pipreqs/archive/refs/tags/.tar.gz"
  sha256 "172dbbf468f2d83896081a22c4d65964cd0fa3dfda7926bfbd6da8b7d4d91d75"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/quick_pipreqs"
  end

  test do
    system "false"
  end
end
