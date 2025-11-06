class QuickTag < Formula
  desc "Quickly tag AWS EC2 instances, EBS volumes, and ENIs that don't have Name tags"
  homepage "https://github.com/bevelwork/quick_tag"
  license "Apache-2.0"

  # Stable: point to a tagged release tarball when available.
  url "https://github.com/bevelwork/quick_tag/archive/refs/tags/v1.4.20251024.tar.gz"
  # url "https://github.com/bevelwork/quick_tag/archive/refs/tags/v1.0.0.tar.gz"
  # sha256 "REPLACE_WITH_REAL_SHA256"

  # Until a tagged release is published, build from the main branch.
  head "https://github.com/bevelwork/quick_tag.git", branch: "main"

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
    out = shell_output("#{bin}/quick-tag --version")
    assert_match(/^[vV]?\d+\.\d+|unknown/, out)
  end
end


