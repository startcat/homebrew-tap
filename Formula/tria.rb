class Tria < Formula
  desc "Sort documents with AI, never deleting or overwriting anything"
  homepage "https://tria.lyn.cat"
  url "https://github.com/startcat/tria/releases/download/v1.0.0/tria-1.0.0-macos.tar.gz"
  sha256 "095e54da1b5930fc888cb5c19e1817832ee3c28c248f43905c5e7fc5fa42b7bd"
  license "Apache-2.0"

  depends_on macos: :sonoma

  def install
    bin.install "tria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tria --version")
  end
end
