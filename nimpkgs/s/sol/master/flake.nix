{
  description = ''A SIMD-accelerated vector library written in C99 with Nim bindings.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sol-master.flake = false;
  inputs.src-sol-master.type = "github";
  inputs.src-sol-master.owner = "davidgarland";
  inputs.src-sol-master.repo = "sol";
  inputs.src-sol-master.ref = "refs/heads/master";
  inputs.src-sol-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sol-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sol-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sol-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}