class QuickPipreqs < Formula
  desc "Quickly generate requirements.txt from Python projects"
  homepage "https://github.com/bevelwork/quick_pipreqs"
  url "https://github.com/bevelwork/quick_pipreqs/archive/refs/tags/1.4.20250916.tar.gz"
  sha256 "ac01fc98751f4929ce449fc612dc960f2bcd94f15a50572d979eddbf3bc46602"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/quick_pipreqs"
  end

  test do
    system "false"
  end
end
