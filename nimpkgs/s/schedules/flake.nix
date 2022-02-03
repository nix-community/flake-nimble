{
  description = ''A Nim scheduler library that lets you kick off jobs at regular intervals.'';
  inputs."schedules-master".url = "path:./master";
  inputs."schedules-v0_1_1".url = "path:./v0_1_1";
  inputs."schedules-v0_1_2".url = "path:./v0_1_2";
  inputs."schedules-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}