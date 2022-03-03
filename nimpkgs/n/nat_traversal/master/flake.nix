{
  description = ''miniupnpc and libnatpmp wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nat_traversal-master.flake = false;
  inputs.src-nat_traversal-master.type = "github";
  inputs.src-nat_traversal-master.owner = "status-im";
  inputs.src-nat_traversal-master.repo = "nim-nat-traversal";
  inputs.src-nat_traversal-master.ref = "refs/heads/master";
  inputs.src-nat_traversal-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."stew".type = "github";
  # inputs."stew".owner = "riinr";
  # inputs."stew".repo = "flake-nimble";
  # inputs."stew".ref = "flake-pinning";
  # inputs."stew".dir = "nimpkgs/s/stew";
  # inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nat_traversal-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nat_traversal-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nat_traversal-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}