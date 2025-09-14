class QuickSsm < Formula
  desc "Quickly connect to AWS servers from the cli. No GUI or ssh needed"
  homepage "https://github.com/bevelwork/quick_ssm"
  url "https://github.com/bevelwork/quick_ssm/archive/refs/tags/1.33.20250911.tar.gz"
  sha256 "2e80c89b6b707ee7c15e66def23519af9b91158220c3b4a58988babb63444d12"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
