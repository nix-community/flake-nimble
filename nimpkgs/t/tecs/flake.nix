{
  description = ''
    Simple ECS implementation for Nim
  '';
  inputs.src-tecs.url = "https://github.com/Timofffee/tecs.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
