{
  description = ''
    Tuple manipulation utilities
  '';
  inputs.src-tuples.url = "https://github.com/MasonMcGill/tuples.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
