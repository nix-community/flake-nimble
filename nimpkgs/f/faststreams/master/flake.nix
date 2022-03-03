{
  description = ''Nearly zero-overhead input/output streams for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-faststreams-master.flake = false;
  inputs.src-faststreams-master.type = "github";
  inputs.src-faststreams-master.owner = "status-im";
  inputs.src-faststreams-master.repo = "nim-faststreams";
  inputs.src-faststreams-master.ref = "refs/heads/master";
  inputs.src-faststreams-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."stew".type = "github";
  # inputs."stew".owner = "riinr";
  # inputs."stew".repo = "flake-nimble";
  # inputs."stew".ref = "flake-pinning";
  # inputs."stew".dir = "nimpkgs/s/stew";
  # inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."testutils".type = "github";
  # inputs."testutils".owner = "riinr";
  # inputs."testutils".repo = "flake-nimble";
  # inputs."testutils".ref = "flake-pinning";
  # inputs."testutils".dir = "nimpkgs/t/testutils";
  # inputs."testutils".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."testutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."chronos".type = "github";
  # inputs."chronos".owner = "riinr";
  # inputs."chronos".repo = "flake-nimble";
  # inputs."chronos".ref = "flake-pinning";
  # inputs."chronos".dir = "nimpkgs/c/chronos";
  # inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."unittest2".type = "github";
  # inputs."unittest2".owner = "riinr";
  # inputs."unittest2".repo = "flake-nimble";
  # inputs."unittest2".ref = "flake-pinning";
  # inputs."unittest2".dir = "nimpkgs/u/unittest2";
  # inputs."unittest2".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."unittest2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-faststreams-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-faststreams-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-faststreams-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}