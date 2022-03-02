{
  description = ''Utilities for use with IP. It has functions for IPv4, IPv6 and CIDR.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-iputils-v0_2_0.flake = false;
  inputs.src-iputils-v0_2_0.type = "github";
  inputs.src-iputils-v0_2_0.owner = "rockcavera";
  inputs.src-iputils-v0_2_0.repo = "nim-iputils";
  inputs.src-iputils-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-iputils-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."stew".type = "github";
  # inputs."stew".owner = "riinr";
  # inputs."stew".repo = "flake-nimble";
  # inputs."stew".ref = "flake-pinning";
  # inputs."stew".dir = "nimpkgs/s/stew";
  # inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-iputils-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-iputils-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-iputils-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}