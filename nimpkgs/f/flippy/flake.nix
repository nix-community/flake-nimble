{
  description = ''Flippy is a simple 2d image and drawing library.'';
  inputs."flippy-master".url = "path:./master";
  inputs."flippy-0_4_0".url = "path:./0_4_0";
  inputs."flippy-0_4_1".url = "path:./0_4_1";
  inputs."flippy-0_4_2".url = "path:./0_4_2";
  inputs."flippy-0_4_3".url = "path:./0_4_3";
  inputs."flippy-0_4_4".url = "path:./0_4_4";
  inputs."flippy-0_4_5".url = "path:./0_4_5";
  inputs."flippy-0_4_6".url = "path:./0_4_6";
  inputs."flippy-0_4_7".url = "path:./0_4_7";
  inputs."flippy-v0_4_1".url = "path:./v0_4_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}