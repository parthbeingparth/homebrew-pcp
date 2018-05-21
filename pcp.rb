class Pcp < Formula
  desc "Performance Co-Pilot is a system performance and analysis framework"
  homepage "https://pcp.io/"
  url "https://github.com/Warewolf96/homebrew-pcp/blob/master/pcp-4.1.0.src.tar.gz"
  sha256 "e533476aef99661e5ad0ede36992a3e56e109a112fe78d47f702aebaeb8534a4"
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
