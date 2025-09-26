class QuickEcs < Formula
  desc "Quickly inspect and manage Amazon ECS services from the CLI"
  homepage "https://github.com/bevelwork/quick_ecs"
  license "Apache-2.0"

  # Stable: point to a tagged release tarball when available.
  url "https://github.com/bevelwork/quick_ecs/archive/refs/tags/v1.1.20250926.tar.gz"
  # url "https://github.com/bevelwork/quick_ecs/archive/refs/tags/v0.1.0.tar.gz"
  # sha256 "REPLACE_WITH_REAL_SHA256"

  # Until a tagged release is published, build from the main branch.
  head "https://github.com/bevelwork/quick_ecs.git", branch: "main"

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
    out = shell_output("#{bin}/quick-ecs --version")
    assert_match(/^[vV]?\d+\.\d+|unknown/, out)
  end
end
