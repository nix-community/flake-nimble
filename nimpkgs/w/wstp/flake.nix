{
  description = ''
    Nim bindings for WSTP
  '';
  inputs.src-wstp.url = "https://github.com/oskca/nim-wstp";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
