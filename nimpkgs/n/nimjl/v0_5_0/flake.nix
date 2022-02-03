{
  description = ''Nim Julia bridge'';
  inputs.src-nimjl-v0_5_0.flake = false;
  inputs.src-nimjl-v0_5_0.type = "github";
  inputs.src-nimjl-v0_5_0.owner = "Clonkk";
  inputs.src-nimjl-v0_5_0.repo = "nimjl";
  inputs.src-nimjl-v0_5_0.ref = "refs/tags/v0.5.0";
  
  
  inputs."arraymancer".url = "path:../../../a/arraymancer";
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  outputs = { self, nixpkgs, src-nimjl-v0_5_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimjl-v0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimjl-v0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}