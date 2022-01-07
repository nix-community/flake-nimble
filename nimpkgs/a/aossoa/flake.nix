{
  description = ''
    Use a Structure of Arrays like an Array of Structures
  '';
  inputs.src-aossoa.url = "https://github.com/guibar64/aossoa";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
