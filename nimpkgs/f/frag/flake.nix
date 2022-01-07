{
  description = ''
    A 2D|3D game engine
  '';
  inputs.src-frag.url = "https://github.com/fragworks/frag";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
