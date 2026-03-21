# Generated with JReleaser 1.23.0 at 2026-03-21T13:13:19.256621434Z

class SparqlMcp < Formula
  desc "MCP server to query SPARQL servers"
  homepage "https://github.com/kludgeworks/mcp-server-rdf"
  version "0.2.7"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.7/sparql-mcp-0.2.7-linux-aarch64.zip"
    sha256 "c8f9aae10173ddbfa138438147749606a086741100dae0cf8ac54c5d146bcfcc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.7/sparql-mcp-0.2.7-linux-x64.zip"
    sha256 "3dec3221f601a9d4b29a48b7d18d765f3f01b1889fab9aae33115ae3bfdbd854"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.7/sparql-mcp-0.2.7-osx-aarch64.zip"
    sha256 "19145a22ab1b9362b2fc2eb070057965a42aa748b0a0883836e765ed80f6eb1b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sparql-mcp" => "sparql-mcp"
  end

  test do
    output = shell_output("#{bin}/sparql-mcp --version")
    assert_match "0.2.7", output
  end
end
