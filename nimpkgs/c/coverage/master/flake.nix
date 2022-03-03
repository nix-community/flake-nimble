{
  description = ''Code coverage library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-coverage-master.flake = false;
  inputs.src-coverage-master.type = "github";
  inputs.src-coverage-master.owner = "yglukhov";
  inputs.src-coverage-master.repo = "coverage";
  inputs.src-coverage-master.ref = "refs/heads/master";
  inputs.src-coverage-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nake".type = "github";
  # inputs."nake".owner = "riinr";
  # inputs."nake".repo = "flake-nimble";
  # inputs."nake".ref = "flake-pinning";
  # inputs."nake".dir = "nimpkgs/n/nake";
  # inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-coverage-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-coverage-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-coverage-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}