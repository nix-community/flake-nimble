{
  description = ''
    Wrapper for Horde3D, a small open source 3D rendering engine.
  '';
  inputs.src-horde3d.url = "https://github.com/fowlmouth/horde3d";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
