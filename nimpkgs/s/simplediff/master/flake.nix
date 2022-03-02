{
  description = ''A library for straightforward diff calculation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-simplediff-master.flake = false;
  inputs.src-simplediff-master.type = "other";
  inputs.src-simplediff-master.owner = "~reesmichael1";
  inputs.src-simplediff-master.repo = "nim-simplediff";
  inputs.src-simplediff-master.ref = "refs/heads/master";
  inputs.src-simplediff-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simplediff-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simplediff-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simplediff-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}