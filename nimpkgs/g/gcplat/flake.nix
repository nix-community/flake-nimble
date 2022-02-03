{
  description = ''Google Cloud Platform (GCP) APIs'';
  inputs."gcplat-master".url = "path:./master";
  inputs."gcplat-0_0_1".url = "path:./0_0_1";
  inputs."gcplat-2_0_0".url = "path:./2_0_0";
  inputs."gcplat-2_0_1".url = "path:./2_0_1";
  inputs."gcplat-2_0_2".url = "path:./2_0_2";
  inputs."gcplat-2_0_3".url = "path:./2_0_3";
  inputs."gcplat-2_0_4".url = "path:./2_0_4";
  inputs."gcplat-2_0_5".url = "path:./2_0_5";
  inputs."gcplat-3_0_0".url = "path:./3_0_0";
  inputs."gcplat-3_0_1".url = "path:./3_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}