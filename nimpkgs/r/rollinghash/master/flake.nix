{
  description = ''A high performance Nim implementation of a Cyclic Polynomial Hash, aka BuzHash, and the Rabin-Karp algorithm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-RollingHash-master.flake = false;
  inputs.src-RollingHash-master.type = "github";
  inputs.src-RollingHash-master.owner = "MarcAzar";
  inputs.src-RollingHash-master.repo = "RollingHash";
  inputs.src-RollingHash-master.ref = "refs/heads/master";
  inputs.src-RollingHash-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-RollingHash-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-RollingHash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-RollingHash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}