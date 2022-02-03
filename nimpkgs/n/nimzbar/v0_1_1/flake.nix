{
  description = ''zbar wrapper for Nim'';
  inputs.src-nimzbar-v0_1_1.flake = false;
  inputs.src-nimzbar-v0_1_1.type = "github";
  inputs.src-nimzbar-v0_1_1.owner = "genotrance";
  inputs.src-nimzbar-v0_1_1.repo = "nimzbar";
  inputs.src-nimzbar-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."nimgen".url = "path:../../../n/nimgen";
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nimzbar-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimzbar-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimzbar-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}