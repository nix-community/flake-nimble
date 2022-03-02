{
  description = ''Polygon Clipper Library (Martinez Algorithm)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-polyBool-master.flake = false;
  inputs.src-polyBool-master.type = "github";
  inputs.src-polyBool-master.owner = "jangko";
  inputs.src-polyBool-master.repo = "polyBool";
  inputs.src-polyBool-master.ref = "refs/heads/master";
  inputs.src-polyBool-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-polyBool-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polyBool-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-polyBool-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}