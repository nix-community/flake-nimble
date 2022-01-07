{
  description = ''
    A simple and free whois client
  '';
  inputs.src-whois.url = "https://gitea.com/Thisago/whois.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
