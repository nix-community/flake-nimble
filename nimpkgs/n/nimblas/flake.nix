{
  description = ''BLAS for Nim'';
  inputs."nimblas-master".url = "path:./master";
  inputs."nimblas-0_1_1".url = "path:./0_1_1";
  inputs."nimblas-0_1_2".url = "path:./0_1_2";
  inputs."nimblas-0_1_3".url = "path:./0_1_3";
  inputs."nimblas-0_1_4".url = "path:./0_1_4";
  inputs."nimblas-0_2_0".url = "path:./0_2_0";
  inputs."nimblas-0_2_1".url = "path:./0_2_1";
  inputs."nimblas-0_2_2".url = "path:./0_2_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}