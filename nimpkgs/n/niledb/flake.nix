{
  description = ''
    Key/Value storage into a fast file-hash
  '';
  inputs.src-niledb.url = "https://github.com/JeffersonLab/niledb.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
