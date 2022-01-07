{
  description = ''
    Wrapper for libevdev, Linux input device processing library
  '';
  inputs.src-libevdev.url = "https://github.com/luked99/libevdev.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
