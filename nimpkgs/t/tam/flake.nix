{
  description = ''Tales of Maj'Eyal addon manager'';
  inputs."tam-master".url = "path:./master";
  inputs."tam-v0_1_0".url = "path:./v0_1_0";
  inputs."tam-v0_1_1".url = "path:./v0_1_1";
  inputs."tam-v0_1_2".url = "path:./v0_1_2";
  inputs."tam-v0_1_3".url = "path:./v0_1_3";
  inputs."tam-v0_1_4".url = "path:./v0_1_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}