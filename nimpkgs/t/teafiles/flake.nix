{
  description = ''TeaFiles provide fast read/write access to time series data'';
  inputs."teafiles-master".url = "path:./master";
  inputs."teafiles-0_1_1".url = "path:./0_1_1";
  inputs."teafiles-0_1_2".url = "path:./0_1_2";
  inputs."teafiles-0_1_3".url = "path:./0_1_3";
  inputs."teafiles-0_1_4".url = "path:./0_1_4";
  inputs."teafiles-0_1_5".url = "path:./0_1_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}