{
  description = ''Temporary files and directories'';
  inputs."tempfile-master".url = "path:./master";
  inputs."tempfile-0_1_5".url = "path:./0_1_5";
  inputs."tempfile-0_1_6".url = "path:./0_1_6";
  inputs."tempfile-0_1_7".url = "path:./0_1_7";
  inputs."tempfile-v_0_1_3".url = "path:./v_0_1_3";
  inputs."tempfile-v0_1_1".url = "path:./v0_1_1";
  inputs."tempfile-v0_1_2".url = "path:./v0_1_2";
  inputs."tempfile-v0_1_4".url = "path:./v0_1_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}