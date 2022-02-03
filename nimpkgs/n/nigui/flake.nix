{
  description = ''NiGui is a cross-platform, desktop GUI toolkit using native widgets.'';
  inputs."nigui-master".url = "path:./master";
  inputs."nigui-v0_2_0".url = "path:./v0_2_0";
  inputs."nigui-v0_2_1".url = "path:./v0_2_1";
  inputs."nigui-v0_2_2".url = "path:./v0_2_2";
  inputs."nigui-v0_2_3".url = "path:./v0_2_3";
  inputs."nigui-v0_2_4".url = "path:./v0_2_4";
  inputs."nigui-v0_2_5".url = "path:./v0_2_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}