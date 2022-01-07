{
  description = ''
    Nim bindings for libOVR (Oculus Rift)
  '';
  inputs.src-libovr.url = "https://github.com/bluenote10/nim-ovr";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
