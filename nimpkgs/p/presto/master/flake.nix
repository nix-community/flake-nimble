{
  description = ''REST API framework for Nim language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-presto-master.flake = false;
  inputs.src-presto-master.type = "github";
  inputs.src-presto-master.owner = "status-im";
  inputs.src-presto-master.repo = "nim-presto";
  inputs.src-presto-master.ref = "refs/heads/master";
  inputs.src-presto-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."chronos".type = "github";
  # inputs."chronos".owner = "riinr";
  # inputs."chronos".repo = "flake-nimble";
  # inputs."chronos".ref = "flake-pinning";
  # inputs."chronos".dir = "nimpkgs/c/chronos";
  # inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."chronicles".type = "github";
  # inputs."chronicles".owner = "riinr";
  # inputs."chronicles".repo = "flake-nimble";
  # inputs."chronicles".ref = "flake-pinning";
  # inputs."chronicles".dir = "nimpkgs/c/chronicles";
  # inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."stew".type = "github";
  # inputs."stew".owner = "riinr";
  # inputs."stew".repo = "flake-nimble";
  # inputs."stew".ref = "flake-pinning";
  # inputs."stew".dir = "nimpkgs/s/stew";
  # inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-presto-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-presto-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-presto-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}