{
  description = ''
    Nim wrapper for libclipboard
  '';
  inputs.src-nimclipboard.url = "https://github.com/genotrance/nimclipboard";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
