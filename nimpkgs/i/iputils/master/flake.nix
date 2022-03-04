{
  description = ''Utilities for use with IP. It has functions for IPv4, IPv6 and CIDR.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-iputils-master.flake = false;
  inputs.src-iputils-master.type = "github";
  inputs.src-iputils-master.owner = "rockcavera";
  inputs.src-iputils-master.repo = "nim-iputils";
  inputs.src-iputils-master.ref = "refs/heads/master";
  inputs.src-iputils-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-iputils-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-iputils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-iputils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}