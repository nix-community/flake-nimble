{
  description = ''
    Serializer and tools for flat binary files.
  '';
  inputs.src-flatty.url = "https://github.com/treeform/flatty";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
