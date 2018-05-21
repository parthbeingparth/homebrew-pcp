class Pcp < Formula
  desc "Performance Co-Pilot is a system performance and analysis framework"
  homepage "https://pcp.io/"
  url "https://dl.bintray.com/pcp/source/pcp-4.0.2.src.tar.gz"
  sha256 "3a24066a771894b57391fdf3de18dd3230b0da0373875b8ccff7d76e3ae259e0"
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
