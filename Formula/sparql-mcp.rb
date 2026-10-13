# Generated with JReleaser 1.26.0 at 2026-10-13T21:09:26.502850057Z

class SparqlMcp < Formula
  desc "MCP server to query SPARQL servers"
  homepage "https://github.com/kludgeworks/mcp-server-rdf"
  version "0.4.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.4.0/sparql-mcp-0.4.0-linux-aarch64.zip"
    sha256 "6eaf981553b90a3849255a57254a00ec2b6f0cfda27221668e72308964e4af7f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.4.0/sparql-mcp-0.4.0-linux-x64.zip"
    sha256 "bcbac0087a9497443398649311c738546ccdfe444928e60ded268c1588d9962c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.4.0/sparql-mcp-0.4.0-osx-aarch64.zip"
    sha256 "5045846a663a0ba99e61f12cf75f0ea676d0db9639a7d8d59d237240ee72db40"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sparql-mcp" => "sparql-mcp"
  end

  test do
    output = shell_output("#{bin}/sparql-mcp --version")
    assert_match "0.4.0", output
  end
end
