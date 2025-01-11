class F1Cli < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for fetching Formula 1 data"
  homepage "https://github.com/amateurmonke/f1-cli"
  url "https://github.com/amateurmonke/f1-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0266ccf747d56d49a9dddf816960554ffdd44dc7d8cb53a4ac91df7fc6273815"
  license "MIT"

  depends_on "python@3.11"

  resource "typer" do
    url "https://files.pythonhosted.org/packages/df/be/7b6899edaf3f3963f5b800114ddf125f29855b6ecc676122e65362964163/typer-0.9.0.tar.gz"
    sha256 "50922fd79aea2f4751a8e0408ff10d2662bd0c8bbfe84755a699f3bada2978b2"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/ee/391076f5937f0a8cdf5e53b701ffc91753e87b07d66bae4a09aa671897bf/requests-2.28.2.tar.gz"
    sha256 "98b1b2782e3c6c4904938b84c0eb932721069dfdb9134313beff7c83c2df24bf"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/11/23/814edf09ec6470d52022b9e95c23c1bef77f0bc451761e1504ebd09606d3/rich-12.6.0.tar.gz"
    sha256 "ba3a3775974105c221d31141f2c116f4fd65c5ceb0698657a11e9f295ec93fd0"
  end

  resource "prettytable" do
    url "https://files.pythonhosted.org/packages/e1/c0/5e9c4d2a643a00a6f67578ef35485173de273a4567279e4f0c200c01386/prettytable-3.9.0.tar.gz"
    sha256 "f4ed94803c23073a90620b201965e5dc0bccf1760b7a7eaf3158cab8aaffdf34"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"f1-cli", "--help"
  end
end
