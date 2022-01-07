{
  description = ''
    Alternative StdLib for Nim for Python targets
  '';
  inputs.src-cpython.url = "https://github.com/juancarlospaco/cpython";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
