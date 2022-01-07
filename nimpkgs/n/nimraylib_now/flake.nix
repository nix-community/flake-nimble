{
  description = ''
    The Ultimate Raylib gaming library wrapper
  '';
  inputs.src-nimraylib_now.url = "https://github.com/greenfork/nimraylib_now";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
