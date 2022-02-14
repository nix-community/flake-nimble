{
  description = ''Wrapper around libopus'';
  inputs."opussum-master".url = "path:./master";
  inputs."opussum-0_1_0".url = "path:./0_1_0";
  inputs."opussum-0_2_0".url = "path:./0_2_0";
  inputs."opussum-0_3_0".url = "path:./0_3_0";
  inputs."opussum-0_4_0".url = "path:./0_4_0";
  inputs."opussum-0_4_1".url = "path:./0_4_1";
  inputs."opussum-0_4_2".url = "path:./0_4_2";
  inputs."opussum-0_4_3".url = "path:./0_4_3";
  inputs."opussum-0_5_0".url = "path:./0_5_0";
  inputs."opussum-0_5_1".url = "path:./0_5_1";
  inputs."opussum-0_6_0".url = "path:./0_6_0";
  inputs."opussum-0_6_1".url = "path:./0_6_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}