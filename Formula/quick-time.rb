class QuickTime < Formula
  desc "Simple CLI tool for time tracking using a clear text TOML-based format"
  homepage "https://github.com/bevelwork/quick_time"
  license "Apache-2.0"

  # Stable: point to a tagged release tarball when available.
  url "https://github.com/bevelwork/quick_time/archive/refs/tags/v2.2.1.tar.gz"
  # url "https://github.com/bevelwork/quick_time/archive/refs/tags/v1.7.0.tar.gz"
  # sha256 "REPLACE_WITH_REAL_SHA256"

  # Until a tagged release is published, build from the main branch.
  head "https://github.com/bevelwork/quick_time.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "."
  end

  test do
    # Verify the binary runs and prints a version string
    out = shell_output("#{bin}/quick_time --version")
    assert_match(/^[vV]?\d+\.\d+|unknown/, out)
  end
end



