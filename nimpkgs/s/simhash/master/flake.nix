{
  description = ''Nim implementation of simhash algoritim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-simhash-master.flake = false;
  inputs.src-simhash-master.type = "github";
  inputs.src-simhash-master.owner = "bung87";
  inputs.src-simhash-master.repo = "simhash-nim";
  inputs.src-simhash-master.ref = "refs/heads/master";
  inputs.src-simhash-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."lc".type = "github";
  # inputs."lc".owner = "riinr";
  # inputs."lc".repo = "flake-nimble";
  # inputs."lc".ref = "flake-pinning";
  # inputs."lc".dir = "nimpkgs/l/lc";
  # inputs."lc".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."lc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-simhash-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simhash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simhash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}