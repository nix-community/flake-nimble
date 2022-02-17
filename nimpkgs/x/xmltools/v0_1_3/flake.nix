{
  description = ''High level xml library for Nim'';
  inputs.src-xmltools-v0_1_3.flake = false;
  inputs.src-xmltools-v0_1_3.type = "github";
  inputs.src-xmltools-v0_1_3.owner = "vegansk";
  inputs.src-xmltools-v0_1_3.repo = "xmltools";
  inputs.src-xmltools-v0_1_3.ref = "refs/tags/v0.1.3";
  
  
  inputs."nimfp".type = "github";
  inputs."nimfp".owner = "riinr";
  inputs."nimfp".repo = "flake-nimble";
  inputs."nimfp".ref = "flake-pinning";
  inputs."nimfp".dir = "nimpkgs/n/nimfp";

  
  inputs."nimboost".type = "github";
  inputs."nimboost".owner = "riinr";
  inputs."nimboost".repo = "flake-nimble";
  inputs."nimboost".ref = "flake-pinning";
  inputs."nimboost".dir = "nimpkgs/n/nimboost";

  outputs = { self, nixpkgs, src-xmltools-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xmltools-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xmltools-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}