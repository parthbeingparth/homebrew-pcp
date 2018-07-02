class Pcp < Formula
  desc "Performance Co-Pilot is a system performance and analysis framework"
  homepage "https://pcp.io/"
  url "https://dl.bintray.com/pcp/macosx/pcp-4.0.0-1.dmg"
  sha256 "8595ea180e7074df0f66dbb586b424966c1967a83f331a90b3e3d7df25f2b20a"
  depends_on "pkg-config" => :build
  depends_on "nss" => :recommended
  depends_on "readline" => :recommended
  depends_on "qt" => :recommended
  depends_on "xz" => :recommended
  depends_on "python3" => :recommended

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    # Run the test with `brew test pcp`.
    system "false"
  end
end
