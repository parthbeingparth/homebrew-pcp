class Pcp < Formula
  desc "Performance Co-Pilot is a system performance and analysis framework"
  homepage "https://pcp.io/"
  url "https://github.com/Warewolf96/homebrew-pcp/blob/master/pcp-4.1.0.src.tar.gz"
  sha256 "3b84f5a819041479930f4277bc65f253d5badccaef9ec590685aae3265971fa9"
  depends_on "xz" => :build
  depends_on "cairo"
  depends_on "libmicrohttpd"
  depends_on "libpng"
  depends_on "pixman"
  depends_on "pkg-config" => :build

  def install
    system "./configure", "--prefix=/usr/local",
                          "--sysconfdir=/etc",
                          "--localstatedir=/var",
                          "--without-webapi"
    system "make", "install"
  end

  test do
    system "false"
  end
end
