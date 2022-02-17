{
  description = ''SuperCollider wrapper for omni.'';
  inputs.src-omnicollider-0_2_2.flake = false;
  inputs.src-omnicollider-0_2_2.type = "github";
  inputs.src-omnicollider-0_2_2.owner = "vitreo12";
  inputs.src-omnicollider-0_2_2.repo = "omnicollider";
  inputs.src-omnicollider-0_2_2.ref = "refs/tags/0.2.2";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."omni".type = "github";
  inputs."omni".owner = "riinr";
  inputs."omni".repo = "flake-nimble";
  inputs."omni".ref = "flake-pinning";
  inputs."omni".dir = "nimpkgs/o/omni";

  outputs = { self, nixpkgs, src-omnicollider-0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omnicollider-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-omnicollider-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}