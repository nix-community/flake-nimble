{
  description = ''Nim - Java bridge'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jnim-v0_1_1.flake = false;
  inputs.src-jnim-v0_1_1.type = "github";
  inputs.src-jnim-v0_1_1.owner = "yglukhov";
  inputs.src-jnim-v0_1_1.repo = "jnim";
  inputs.src-jnim-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."nimfp".type = "github";
  inputs."nimfp".owner = "riinr";
  inputs."nimfp".repo = "flake-nimble";
  inputs."nimfp".ref = "flake-pinning";
  inputs."nimfp".dir = "nimpkgs/n/nimfp";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jnim-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jnim-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jnim-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}