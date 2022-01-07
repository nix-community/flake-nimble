{
  description = ''
    An implementation of DNS server stamps in Nim
  '';
  inputs.src-dnsstamps.url = "https://github.com/alaviss/dnsstamps";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
