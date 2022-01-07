{
  description = ''
    Lua convenience library for nim
  '';
  inputs.src-luna.url = "https://github.com/smallfx/luna.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
