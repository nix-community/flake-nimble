{
  description = ''A library for factorization machines in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimfm-v0_3_0.flake = false;
  inputs.src-nimfm-v0_3_0.type = "github";
  inputs.src-nimfm-v0_3_0.owner = "neonnnnn";
  inputs.src-nimfm-v0_3_0.repo = "nimfm";
  inputs.src-nimfm-v0_3_0.ref = "refs/tags/v0.3.0";
  inputs.src-nimfm-v0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimlapack".type = "github";
  # inputs."nimlapack".owner = "riinr";
  # inputs."nimlapack".repo = "flake-nimble";
  # inputs."nimlapack".ref = "flake-pinning";
  # inputs."nimlapack".dir = "nimpkgs/n/nimlapack";
  # inputs."nimlapack".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimlapack".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfm-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfm-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfm-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}