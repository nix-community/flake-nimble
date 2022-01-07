{
  description = ''
    Domain Name System (DNS) protocol for Nim programming language
  '';
  inputs.src-dnsprotocol.url = "https://github.com/rockcavera/nim-dnsprotocol";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
