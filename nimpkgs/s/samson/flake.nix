{
  description = ''
    Implementation of JSON5.
  '';
  inputs.src-samson.url = "https://github.com/GULPF/samson";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
