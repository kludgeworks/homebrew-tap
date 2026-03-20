# Generated with JReleaser 1.23.0 at 2026-03-20T22:35:04.477664085Z

class SparqlMcp < Formula
  desc "MCP server to query SPARQL servers"
  homepage "https://github.com/kludgeworks/mcp-server-rdf"
  version "0.2.6"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.6/sparql-mcp-0.2.6-linux-aarch64.zip"
    sha256 "031773908025bfc60b59b94a308227b0ade8926ef44f5514070c53ee951afc03"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.6/sparql-mcp-0.2.6-linux-x64.zip"
    sha256 "df7a1b57b8e080a80c700fb9df5d3d24dfc0577f11071d01606b9a5626bcf027"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.6/sparql-mcp-0.2.6-osx-aarch64.zip"
    sha256 "95cd3b0333e7cce5542d266a56992ea4309d810de098e4d2d6882df7aaadff52"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sparql-mcp" => "sparql-mcp"
  end

  test do
    output = shell_output("#{bin}/sparql-mcp --version")
    assert_match "0.2.6", output
  end
end
