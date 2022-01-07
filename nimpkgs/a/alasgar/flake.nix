{
  description = ''
    Game Engine
  '';
  inputs.src-alasgar.url = "https://github.com/abisxir/alasgar";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
