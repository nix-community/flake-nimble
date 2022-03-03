{
  description = ''Simplified handling of command line options and config files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-confutils-master.flake = false;
  inputs.src-confutils-master.type = "github";
  inputs.src-confutils-master.owner = "status-im";
  inputs.src-confutils-master.repo = "nim-confutils";
  inputs.src-confutils-master.ref = "refs/heads/master";
  inputs.src-confutils-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."stew".type = "github";
  # inputs."stew".owner = "riinr";
  # inputs."stew".repo = "flake-nimble";
  # inputs."stew".ref = "flake-pinning";
  # inputs."stew".dir = "nimpkgs/s/stew";
  # inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-confutils-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-confutils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-confutils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}