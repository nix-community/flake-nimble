{
  description = ''
    Circuit Design language made in Nim
  '';
  inputs.src-nimcdl.url = "https://gitlab.com/endes123321/nimcdl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
