{
  description = ''nim tasks apply to git hooks'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-stage-v0_3_5.flake = false;
  inputs.src-stage-v0_3_5.type = "github";
  inputs.src-stage-v0_3_5.owner = "bung87";
  inputs.src-stage-v0_3_5.repo = "stage";
  inputs.src-stage-v0_3_5.ref = "refs/tags/v0.3.5";
  inputs.src-stage-v0_3_5.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."shell".type = "github";
  # inputs."shell".owner = "riinr";
  # inputs."shell".repo = "flake-nimble";
  # inputs."shell".ref = "flake-pinning";
  # inputs."shell".dir = "nimpkgs/s/shell";
  # inputs."shell".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."shell".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-stage-v0_3_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stage-v0_3_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stage-v0_3_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}