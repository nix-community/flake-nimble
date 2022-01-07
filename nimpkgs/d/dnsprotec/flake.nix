{
  description = ''
    DNS /etc/hosts file manager, Block 1 Million malicious domains with 1 command
  '';
  inputs.src-dnsprotec.url = "https://github.com/juancarlospaco/nim-dnsprotec";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
