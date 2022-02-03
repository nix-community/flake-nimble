{
  description = ''prestodb simple connector'';
  inputs."db_presto-master".url = "path:./master";
  inputs."db_presto-0_5_0".url = "path:./0_5_0";
  inputs."db_presto-0_7_0".url = "path:./0_7_0";
  inputs."db_presto-0_8_0".url = "path:./0_8_0";
  inputs."db_presto-0_9_1".url = "path:./0_9_1";
  inputs."db_presto-0_9_5".url = "path:./0_9_5";
  inputs."db_presto-0_9_8".url = "path:./0_9_8";
  inputs."db_presto-0_9_9".url = "path:./0_9_9";
  inputs."db_presto-0_9_91".url = "path:./0_9_91";
  inputs."db_presto-1_0_1".url = "path:./1_0_1";
  inputs."db_presto-1_0_11".url = "path:./1_0_11";
  inputs."db_presto-1_1_0".url = "path:./1_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}