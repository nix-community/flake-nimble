{
  description = ''
    Port of c++ glm library with shader-like syntax
  '';
  inputs.src-glm.url = "https://github.com/stavenko/nim-glm";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
