{
  description = ''rena is a tiny fire/directory renaming command.'';
  inputs.src-rena-v1_0_1.flake = false;
  inputs.src-rena-v1_0_1.type = "github";
  inputs.src-rena-v1_0_1.owner = "jiro4989";
  inputs.src-rena-v1_0_1.repo = "rena";
  inputs.src-rena-v1_0_1.ref = "refs/tags/v1.0.1";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-rena-v1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rena-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rena-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}