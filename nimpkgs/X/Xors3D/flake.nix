{
  description = ''
    Blitz3D-esque DX9 engine for Nim
  '';
  inputs.src-Xors3D.url = "https://github.com/Guevara-chan/Xors3D-for-Nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
