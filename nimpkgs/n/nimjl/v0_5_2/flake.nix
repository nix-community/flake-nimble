{
  description = ''Nim Julia bridge'';
  inputs.src-nimjl-v0_5_2.flake = false;
  inputs.src-nimjl-v0_5_2.type = "github";
  inputs.src-nimjl-v0_5_2.owner = "Clonkk";
  inputs.src-nimjl-v0_5_2.repo = "nimjl";
  inputs.src-nimjl-v0_5_2.ref = "refs/tags/v0.5.2";
  
  
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  outputs = { self, nixpkgs, src-nimjl-v0_5_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimjl-v0_5_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimjl-v0_5_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}