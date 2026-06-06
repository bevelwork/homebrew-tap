class QuickSsm < Formula
  desc "Quickly connect to AWS servers from the cli. No GUI or ssh needed"
  homepage "https://github.com/bevelwork/quick_ssm"
  url "https://github.com/bevelwork/quick_ssm/archive/refs/tags/null.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
