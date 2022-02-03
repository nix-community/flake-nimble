{
  description = ''High level xml library for Nim'';
  inputs.src-xmltools-v0_0_3.flake = false;
  inputs.src-xmltools-v0_0_3.type = "github";
  inputs.src-xmltools-v0_0_3.owner = "vegansk";
  inputs.src-xmltools-v0_0_3.repo = "xmltools";
  inputs.src-xmltools-v0_0_3.ref = "refs/tags/v0.0.3";
  
  
  inputs."nimfp".url = "path:../../../n/nimfp";
  inputs."nimfp".type = "github";
  inputs."nimfp".owner = "riinr";
  inputs."nimfp".repo = "flake-nimble";
  inputs."nimfp".ref = "flake-pinning";
  inputs."nimfp".dir = "nimpkgs/n/nimfp";

  outputs = { self, nixpkgs, src-xmltools-v0_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xmltools-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xmltools-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}