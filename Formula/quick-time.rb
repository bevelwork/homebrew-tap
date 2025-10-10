class QuickTime < Formula
  desc "Simple CLI tool for time tracking using a clear text TOML-based format"
  homepage "https://github.com/bevelwork/quick_time"
  license "Apache-2.0"

  # Stable: point to a tagged release tarball when available.
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
    system "go", "build", *std_go_args(ldflags: ldflags, output: bin/"quick-time"), "."
  end

  test do
    # Verify the binary runs and prints a version string
    out = shell_output("#{bin}/quick-time --version")
    assert_match(/^v\d+\.\d+\.\d+/, out)

    # Test basic functionality with a temporary file
    testfile = testpath/"test_time.toml"
    system bin/"quick-time", "--file", testfile, "log", "30m", "test task"
    assert_predicate testfile, :exist?
    
    # Verify the file contains expected content
    content = File.read(testfile)
    assert_match(/time = "30m"/, content)
    assert_match(/description = "test task"/, content)
  end
end

