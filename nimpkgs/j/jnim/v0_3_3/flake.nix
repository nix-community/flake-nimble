{
  description = ''Nim - Java bridge'';
  inputs.src-jnim-v0_3_3.flake = false;
  inputs.src-jnim-v0_3_3.type = "github";
  inputs.src-jnim-v0_3_3.owner = "yglukhov";
  inputs.src-jnim-v0_3_3.repo = "jnim";
  inputs.src-jnim-v0_3_3.ref = "refs/tags/v0.3.3";
  
  
  inputs."nimfp".type = "github";
  inputs."nimfp".owner = "riinr";
  inputs."nimfp".repo = "flake-nimble";
  inputs."nimfp".ref = "flake-pinning";
  inputs."nimfp".dir = "nimpkgs/n/nimfp";

  outputs = { self, nixpkgs, src-jnim-v0_3_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jnim-v0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jnim-v0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}