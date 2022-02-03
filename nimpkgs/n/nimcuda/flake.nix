{
  description = ''CUDA bindings'';
  inputs."nimcuda-master".url = "path:./master";
  inputs."nimcuda-0_1_1".url = "path:./0_1_1";
  inputs."nimcuda-0_1_2".url = "path:./0_1_2";
  inputs."nimcuda-0_1_3".url = "path:./0_1_3";
  inputs."nimcuda-0_1_4".url = "path:./0_1_4";
  inputs."nimcuda-0_1_5".url = "path:./0_1_5";
  inputs."nimcuda-0_1_6".url = "path:./0_1_6";
  inputs."nimcuda-0_1_7".url = "path:./0_1_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}