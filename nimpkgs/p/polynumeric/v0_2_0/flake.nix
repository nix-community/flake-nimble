{
  description = ''Polynomial operations'';
  inputs.src-polynumeric-v0_2_0.flake = false;
  inputs.src-polynumeric-v0_2_0.type = "github";
  inputs.src-polynumeric-v0_2_0.owner = "SciNim";
  inputs.src-polynumeric-v0_2_0.repo = "polynumeric";
  inputs.src-polynumeric-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  outputs = { self, nixpkgs, src-polynumeric-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polynumeric-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-polynumeric-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}