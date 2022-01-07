{
  description = ''
    An OpenAL wrapper.
  '';
  inputs.src-openal.url = "https://github.com/treeform/openal";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
