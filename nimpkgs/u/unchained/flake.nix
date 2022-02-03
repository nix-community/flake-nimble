{
  description = ''Fully type safe, compile time only units library'';
  inputs."unchained-master".url = "path:./master";
  inputs."unchained-v0_1_0".url = "path:./v0_1_0";
  inputs."unchained-v0_1_1".url = "path:./v0_1_1";
  inputs."unchained-v0_1_3".url = "path:./v0_1_3";
  inputs."unchained-v0_1_4".url = "path:./v0_1_4";
  inputs."unchained-v0_1_5".url = "path:./v0_1_5";
  inputs."unchained-v0_1_6".url = "path:./v0_1_6";
  inputs."unchained-v0_1_7".url = "path:./v0_1_7";
  inputs."unchained-v0_1_8".url = "path:./v0_1_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}