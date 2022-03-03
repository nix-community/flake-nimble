{
  description = ''A modern and extensible serialization framework for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-serialization-master.flake = false;
  inputs.src-serialization-master.type = "github";
  inputs.src-serialization-master.owner = "status-im";
  inputs.src-serialization-master.repo = "nim-serialization";
  inputs.src-serialization-master.ref = "refs/heads/master";
  inputs.src-serialization-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."faststreams".type = "github";
  # inputs."faststreams".owner = "riinr";
  # inputs."faststreams".repo = "flake-nimble";
  # inputs."faststreams".ref = "flake-pinning";
  # inputs."faststreams".dir = "nimpkgs/f/faststreams";
  # inputs."faststreams".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."faststreams".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."unittest2".type = "github";
  # inputs."unittest2".owner = "riinr";
  # inputs."unittest2".repo = "flake-nimble";
  # inputs."unittest2".ref = "flake-pinning";
  # inputs."unittest2".dir = "nimpkgs/u/unittest2";
  # inputs."unittest2".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."unittest2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."stew".type = "github";
  # inputs."stew".owner = "riinr";
  # inputs."stew".repo = "flake-nimble";
  # inputs."stew".ref = "flake-pinning";
  # inputs."stew".dir = "nimpkgs/s/stew";
  # inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-serialization-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serialization-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-serialization-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}