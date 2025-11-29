class QuickPipreqs < Formula
  desc "Quickly generate requirements.txt from Python projects"
  homepage "https://github.com/bevelwork/quick_pipreqs"
  url "https://github.com/bevelwork/quick_pipreqs/archive/refs/tags/null.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/quick_pipreqs"
  end

  test do
    system "false"
  end
end
