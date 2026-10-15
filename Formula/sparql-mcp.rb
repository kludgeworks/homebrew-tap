# Generated with JReleaser 1.26.0 at 2026-10-15T18:30:53.417550567Z

class SparqlMcp < Formula
  desc "MCP server to query SPARQL servers"
  homepage "https://github.com/kludgeworks/mcp-server-rdf"
  version "0.5.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.5.0/sparql-mcp-0.5.0-linux-aarch64.zip"
    sha256 "9157dfb5828406e33d86662dc3f6ec114fe3400cc9a58556d0f3736377ec6e0a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.5.0/sparql-mcp-0.5.0-linux-x64.zip"
    sha256 "27df09db36c06f5c8f3bc1b4d83333b82bb0fb78c122cf5a2864894f91b87937"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.5.0/sparql-mcp-0.5.0-osx-aarch64.zip"
    sha256 "19a78a97fa8427fc0266244017048be793447c566a686ea6a0003c1558cc311f"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sparql-mcp" => "sparql-mcp"
  end

  test do
    output = shell_output("#{bin}/sparql-mcp --version")
    assert_match "0.5.0", output
  end
end
