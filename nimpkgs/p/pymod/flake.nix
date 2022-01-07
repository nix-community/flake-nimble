{
  description = ''
    Auto-generate a Python module that wraps a Nim module.
  '';
  inputs.src-pymod.url = "https://github.com/jboy/nim-pymod";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
