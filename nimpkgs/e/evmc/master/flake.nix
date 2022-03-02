{
  description = ''A wrapper for the The Ethereum EVMC library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-evmc-master.flake = false;
  inputs.src-evmc-master.type = "github";
  inputs.src-evmc-master.owner = "status-im";
  inputs.src-evmc-master.repo = "nim-evmc";
  inputs.src-evmc-master.ref = "refs/heads/master";
  inputs.src-evmc-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."stew".type = "github";
  # inputs."stew".owner = "riinr";
  # inputs."stew".repo = "flake-nimble";
  # inputs."stew".ref = "flake-pinning";
  # inputs."stew".dir = "nimpkgs/s/stew";
  # inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-evmc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-evmc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-evmc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}