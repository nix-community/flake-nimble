{
  description = ''High level xml library for Nim'';
  inputs.src-xmltools-v0_0_1.flake = false;
  inputs.src-xmltools-v0_0_1.type = "github";
  inputs.src-xmltools-v0_0_1.owner = "vegansk";
  inputs.src-xmltools-v0_0_1.repo = "xmltools";
  inputs.src-xmltools-v0_0_1.ref = "refs/tags/v0.0.1";
  
  
  inputs."nimfp".url = "path:../../../n/nimfp";
  inputs."nimfp".type = "github";
  inputs."nimfp".owner = "riinr";
  inputs."nimfp".repo = "flake-nimble";
  inputs."nimfp".ref = "flake-pinning";
  inputs."nimfp".dir = "nimpkgs/n/nimfp";

  outputs = { self, nixpkgs, src-xmltools-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xmltools-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xmltools-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}