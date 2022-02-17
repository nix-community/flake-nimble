{
  description = ''Nim - Java bridge'';
  inputs.src-jnim-v0_2_2.flake = false;
  inputs.src-jnim-v0_2_2.type = "github";
  inputs.src-jnim-v0_2_2.owner = "yglukhov";
  inputs.src-jnim-v0_2_2.repo = "jnim";
  inputs.src-jnim-v0_2_2.ref = "refs/tags/v0.2.2";
  
  
  inputs."nimfp".type = "github";
  inputs."nimfp".owner = "riinr";
  inputs."nimfp".repo = "flake-nimble";
  inputs."nimfp".ref = "flake-pinning";
  inputs."nimfp".dir = "nimpkgs/n/nimfp";

  outputs = { self, nixpkgs, src-jnim-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jnim-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jnim-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}