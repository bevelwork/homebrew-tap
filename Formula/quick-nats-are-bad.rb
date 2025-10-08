class QuickNatsAreBad < Formula
  desc "Generate cost reports for AWS NAT Gateways"
  homepage "https://github.com/bevelwork/quick_nats_are_bad"
  license "Apache-2.0"

  # Stable: point to a tagged release tarball when available.
  url "https://github.com/bevelwork/quick_nats_are_bad/archive/refs/tags/null.tar.gz"
  # sha256 "REPLACE_WITH_REAL_SHA256"

  # Until a tagged release is published, build from the main branch.
  head "https://github.com/bevelwork/quick_nats_are_bad.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "go" => :build

  def install
    # Pass version via ldflags to main.version in the binary
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "."
  end

  test do
    out = shell_output("#{bin}/quick_nats_are_bad --version")
    assert_match(/^[vV]?\d+\.\d+|unknown/, out)
  end
end


