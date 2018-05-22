class Pcp < Formula
  desc "Performance Co-Pilot is a system performance and analysis framework"
  homepage "https://pcp.io/"
  url "https://github.com/Warewolf96/homebrew-pcp/pcp-4.1.0.src.tar.gz"
  sha256 "47e7997973097983c6200abbfaacd6c5db98fbd80c49a70e1fba7c5a9a7f06af"
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
