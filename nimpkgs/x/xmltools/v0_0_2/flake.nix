{
  description = ''High level xml library for Nim'';
  inputs.src-xmltools-v0_0_2.flake = false;
  inputs.src-xmltools-v0_0_2.type = "github";
  inputs.src-xmltools-v0_0_2.owner = "vegansk";
  inputs.src-xmltools-v0_0_2.repo = "xmltools";
  inputs.src-xmltools-v0_0_2.ref = "refs/tags/v0.0.2";
  
  
  inputs."nimfp".url = "path:../../../n/nimfp";
  inputs."nimfp".type = "github";
  inputs."nimfp".owner = "riinr";
  inputs."nimfp".repo = "flake-nimble";
  inputs."nimfp".ref = "flake-pinning";
  inputs."nimfp".dir = "nimpkgs/n/nimfp";

  outputs = { self, nixpkgs, src-xmltools-v0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xmltools-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xmltools-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}