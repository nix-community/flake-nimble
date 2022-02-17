{
  description = ''omni is a DSL for low-level audio programming.'';
  inputs.src-omni-0_2_3.flake = false;
  inputs.src-omni-0_2_3.type = "github";
  inputs.src-omni-0_2_3.owner = "vitreo12";
  inputs.src-omni-0_2_3.repo = "omni";
  inputs.src-omni-0_2_3.ref = "refs/tags/0.2.3";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-omni-0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omni-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-omni-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}