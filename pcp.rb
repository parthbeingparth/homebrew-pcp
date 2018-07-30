class Pcp < Formula
  desc "Performance Co-Pilot is a system performance and analysis framework"
  homepage "https://pcp.io/"
  url "https://github.com/Warewolf96/homebrew-pcp/blob/master/pcp-4.1.1.src.tar.gz"
  sha256 "485ce06ab82bd18f303635d9446aac3b9571781d3120b71fea22fefc74e73691"
  depends_on "pkg-config" => :build
  depends_on "nss"
  depends_on "python"
  depends_on "qt"
  depends_on "readline"
  depends_on "xz"

  def install
    system "./configure", "--prefix=#{prefix}", "CC=clang", "CXX=clang", "--without-manager"
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    # Run the test with `brew test pcp`.
    system "false"
  end
end
