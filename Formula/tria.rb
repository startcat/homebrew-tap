class Tria < Formula
  desc "Sort documents with AI, never deleting or overwriting anything"
  homepage "https://tria.lyn.cat"
  url "https://github.com/startcat/tria/releases/download/v1.0.0/tria-1.0.0-macos.tar.gz"
  sha256 "e06a08caecf738518b0fe1a0ec889818d7a7564398e8ecf181d947e48ff68b33"
  license "Apache-2.0"

  depends_on macos: :sonoma

  def install
    bin.install "tria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tria --version")
  end
end
