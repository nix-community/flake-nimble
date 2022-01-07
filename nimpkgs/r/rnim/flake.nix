{
  description = ''
    A bridge between R and Nim
  '';
  inputs.src-rnim.url = "https://github.com/SciNim/rnim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
