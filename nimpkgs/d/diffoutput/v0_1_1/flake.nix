{
  description = ''Collection of Diff stringifications (and reversals)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-diffoutput-v0_1_1.flake = false;
  inputs.src-diffoutput-v0_1_1.type = "github";
  inputs.src-diffoutput-v0_1_1.owner = "JohnAD";
  inputs.src-diffoutput-v0_1_1.repo = "diffoutput";
  inputs.src-diffoutput-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-diffoutput-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."diff".type = "github";
  # inputs."diff".owner = "riinr";
  # inputs."diff".repo = "flake-nimble";
  # inputs."diff".ref = "flake-pinning";
  # inputs."diff".dir = "nimpkgs/d/diff";
  # inputs."diff".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."diff".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-diffoutput-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-diffoutput-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-diffoutput-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}