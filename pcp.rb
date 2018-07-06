class Pcp < Formula
  desc "Performance Co-Pilot is a system performance and analysis framework"
  homepage "https://pcp.io/"
  url "https://dl.bintray.com/pcp/source/pcp-4.1.0.src.tar.gz"
  sha256 "0456e6163dd5a530d6b042bf56e54dc2fa0f9e60c8e7ff559eaa15d362f2d2f2"
  depends_on "pkg-config" => :build
  depends_on "nss"
  depends_on "python"
  depends_on "qt"
  depends_on "readline"
  depends_on "xz"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"

    include.install "/usr/local/opt/pcp/lib/"
    MachO::Tools.change_dylib_id("#{lib}/libpcp_web.dylib.1", "#{lib}/libpcp_webq.1.dylib")
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    # Run the test with `brew test pcp`.
    system "false"
  end
end
