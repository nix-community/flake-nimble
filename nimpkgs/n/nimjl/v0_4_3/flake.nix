{
  description = ''Nim Julia bridge'';
  inputs.src-nimjl-v0_4_3.flake = false;
  inputs.src-nimjl-v0_4_3.type = "github";
  inputs.src-nimjl-v0_4_3.owner = "Clonkk";
  inputs.src-nimjl-v0_4_3.repo = "nimjl";
  inputs.src-nimjl-v0_4_3.ref = "refs/tags/v0.4.3";
  
  
  inputs."arraymancer".url = "path:../../../a/arraymancer";
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  outputs = { self, nixpkgs, src-nimjl-v0_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimjl-v0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimjl-v0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}