{
  description = ''
    Wrapper to interface with the Lua interpreter
  '';
  inputs.src-lua.url = "https://github.com/nim-lang/lua";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
