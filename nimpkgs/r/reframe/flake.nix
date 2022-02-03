{
  description = ''Tools for working with re-frame ClojureScript projects'';
  inputs."reframe-master".url = "path:./master";
  inputs."reframe-0_1_0".url = "path:./0_1_0";
  inputs."reframe-0_2_0".url = "path:./0_2_0";
  inputs."reframe-0_3_0".url = "path:./0_3_0";
  inputs."reframe-0_3_1".url = "path:./0_3_1";
  inputs."reframe-0_4_0".url = "path:./0_4_0";
  inputs."reframe-0_4_1".url = "path:./0_4_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}