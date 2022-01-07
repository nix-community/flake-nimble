{
  description = ''
    Unicode normalization forms (tr15)
  '';
  inputs.src-normalize.url = "https://github.com/nitely/nim-normalize";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
