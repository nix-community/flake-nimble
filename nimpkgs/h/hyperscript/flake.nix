{
  description = ''
    Create HyperText with Nim.
  '';
  inputs.src-hyperscript.url = "https://github.com/schneiderfelipe/hyperscript";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
