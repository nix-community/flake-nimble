{
  description = ''envconfig provides a function to get config objects from environment variables.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-envconfig-v1_0_2.flake = false;
  inputs.src-envconfig-v1_0_2.type = "github";
  inputs.src-envconfig-v1_0_2.owner = "jiro4989";
  inputs.src-envconfig-v1_0_2.repo = "envconfig";
  inputs.src-envconfig-v1_0_2.ref = "refs/tags/v1.0.2";
  inputs.src-envconfig-v1_0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-envconfig-v1_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-envconfig-v1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-envconfig-v1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}