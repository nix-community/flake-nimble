{
  description = ''Asynchronous networking engine for Nim'';
  inputs."reactor-master".url = "path:./master";
  inputs."reactor-v0_0_1".url = "path:./v0_0_1";
  inputs."reactor-v0_3_0".url = "path:./v0_3_0";
  inputs."reactor-v0_3_1".url = "path:./v0_3_1";
  inputs."reactor-v0_3_2".url = "path:./v0_3_2";
  inputs."reactor-v0_4_0".url = "path:./v0_4_0";
  inputs."reactor-v0_4_1".url = "path:./v0_4_1";
  inputs."reactor-v0_4_2".url = "path:./v0_4_2";
  inputs."reactor-v0_4_3".url = "path:./v0_4_3";
  inputs."reactor-v0_4_4".url = "path:./v0_4_4";
  inputs."reactor-v0_4_5".url = "path:./v0_4_5";
  inputs."reactor-v0_4_6".url = "path:./v0_4_6";
  inputs."reactor-v0_5_0".url = "path:./v0_5_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}