{
  description = ''envconfig provides a function to get config objects from environment variables.'';
  inputs.src-envconfig-v1_0_0.flake = false;
  inputs.src-envconfig-v1_0_0.type = "github";
  inputs.src-envconfig-v1_0_0.owner = "jiro4989";
  inputs.src-envconfig-v1_0_0.repo = "envconfig";
  inputs.src-envconfig-v1_0_0.ref = "refs/tags/v1.0.0";
  
  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-envconfig-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-envconfig-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-envconfig-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}