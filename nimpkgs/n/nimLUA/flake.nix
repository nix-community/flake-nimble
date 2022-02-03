{
  description = ''glue code generator to bind Nim and Lua together using Nim's powerful macro'';
  inputs."nimLUA-master".url = "path:./master";
  inputs."nimLUA-v0_3_8".url = "path:./v0_3_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}