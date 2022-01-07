{
  description = ''
    nim tasks apply to git hooks
  '';
  inputs.src-stage.url = "https://github.com/bung87/stage";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
