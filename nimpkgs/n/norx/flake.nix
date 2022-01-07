{
  description = ''
    A wrapper of the ORX 2.5D game engine
  '';
  inputs.src-norx.url = "https://github.com/gokr/norx";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
