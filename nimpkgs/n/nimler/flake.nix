{
  description = ''Erlang/Elixir NIFs for nim'';
  inputs."nimler-develop".url = "path:./develop";
  inputs."nimler-master".url = "path:./master";
  inputs."nimler-v2_0".url = "path:./v2_0";
  inputs."nimler-v3_0".url = "path:./v3_0";
  inputs."nimler-v3_1".url = "path:./v3_1";
  inputs."nimler-v4_0".url = "path:./v4_0";
  inputs."nimler-v4_1".url = "path:./v4_1";
  inputs."nimler-v4_2".url = "path:./v4_2";
  inputs."nimler-v4_3".url = "path:./v4_3";
  inputs."nimler-v4_4".url = "path:./v4_4";
  inputs."nimler-v4_5".url = "path:./v4_5";
  inputs."nimler-v4_6".url = "path:./v4_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}