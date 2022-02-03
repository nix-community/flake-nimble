{
  description = ''A Nim-based, non-graphical application designed to measure the amount of time elapsed from its activation to deactivation, includes total elapsed time, lap, and split times.'';
  inputs."nimstopwatch-master".url = "path:./master";
  
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}