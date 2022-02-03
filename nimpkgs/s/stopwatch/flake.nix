{
  description = ''A simple timing library for benchmarking code and other things.'';
  inputs."stopwatch-master".url = "path:./master";
  inputs."stopwatch-v3_5".url = "path:./v3_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}