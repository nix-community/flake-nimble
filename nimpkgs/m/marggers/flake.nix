{
  description = ''dialect of Markdown in pure Nim with focus on HTML output'';
  inputs."marggers-master".url = "path:./master";
  inputs."marggers-v0_1_0".url = "path:./v0_1_0";
  inputs."marggers-v0_2_0".url = "path:./v0_2_0";
  inputs."marggers-v0_2_1".url = "path:./v0_2_1";
  inputs."marggers-v0_2_2".url = "path:./v0_2_2";
  inputs."marggers-v0_2_3".url = "path:./v0_2_3";
  inputs."marggers-v0_2_4".url = "path:./v0_2_4";
  inputs."marggers-v0_2_5".url = "path:./v0_2_5";
  inputs."marggers-v0_2_6".url = "path:./v0_2_6";
  inputs."marggers-v0_2_7".url = "path:./v0_2_7";
  inputs."marggers-v0_2_8".url = "path:./v0_2_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}