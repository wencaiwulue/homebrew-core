class Kubevpn < Formula
  desc "KubeVPN offers a Cloud-Native Dev Environment by connects to K8s cluster network"
  homepage "https://www.kubevpn.cn"
  url "https://github.com/kubenetworks/kubevpn/archive/refs/tags/v2.2.11.tar.gz"
  sha256 "d1167358a9cf7c09276b697ed97ca922f14d446d82376ec8ba7963ba7271deab"
  license "MIT"
  head "https://github.com/kubenetworks/kubevpn.git"

  depends_on "go" => :build

  def install
    system "make", "kubevpn"
  end

  test do
    system "#{bin}/kubevpn", "version"
  end
end
