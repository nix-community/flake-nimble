{
  description = ''
    omni is a DSL for low-level audio programming.
  '';
  inputs.src-omni.url = "https://github.com/vitreo12/omni";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
