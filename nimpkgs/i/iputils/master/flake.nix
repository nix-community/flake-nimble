{
  description = ''Utilities for use with IP. It has functions for IPv4, IPv6 and CIDR.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-iputils-master.flake = false;
  inputs.src-iputils-master.type = "github";
  inputs.src-iputils-master.owner = "rockcavera";
  inputs.src-iputils-master.repo = "nim-iputils";
  inputs.src-iputils-master.ref = "refs/heads/master";
  
  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  outputs = { self, nixpkgs, flakeNimbleLib, src-iputils-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-iputils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-iputils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}