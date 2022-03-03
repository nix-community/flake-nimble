{
  description = ''A numpy like ndarray and dataframe library for nim-lang.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-numnim-master.flake = false;
  inputs.src-numnim-master.type = "github";
  inputs.src-numnim-master.owner = "YesDrX";
  inputs.src-numnim-master.repo = "numnim";
  inputs.src-numnim-master.ref = "refs/heads/master";
  inputs.src-numnim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimblas".type = "github";
  # inputs."nimblas".owner = "riinr";
  # inputs."nimblas".repo = "flake-nimble";
  # inputs."nimblas".ref = "flake-pinning";
  # inputs."nimblas".dir = "nimpkgs/n/nimblas";
  # inputs."nimblas".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimblas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimlapack".type = "github";
  # inputs."nimlapack".owner = "riinr";
  # inputs."nimlapack".repo = "flake-nimble";
  # inputs."nimlapack".ref = "flake-pinning";
  # inputs."nimlapack".dir = "nimpkgs/n/nimlapack";
  # inputs."nimlapack".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimlapack".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimpy".type = "github";
  # inputs."nimpy".owner = "riinr";
  # inputs."nimpy".repo = "flake-nimble";
  # inputs."nimpy".ref = "flake-pinning";
  # inputs."nimpy".dir = "nimpkgs/n/nimpy";
  # inputs."nimpy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-numnim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-numnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-numnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}