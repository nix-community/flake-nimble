{
  description = ''Web Technologies based Crossplatform GUI Framework'';
  inputs."crowngui-master".url = "path:./master";
  inputs."crowngui-v0_2_3".url = "path:./v0_2_3";
  inputs."crowngui-v0_2_4".url = "path:./v0_2_4";
  inputs."crowngui-v0_2_7".url = "path:./v0_2_7";
  inputs."crowngui-v0_2_8".url = "path:./v0_2_8";
  inputs."crowngui-v0_2_9".url = "path:./v0_2_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}