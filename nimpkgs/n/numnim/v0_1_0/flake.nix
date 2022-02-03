{
  description = ''A numpy like ndarray and dataframe library for nim-lang.'';
  inputs.src-numnim-v0_1_0.flake = false;
  inputs.src-numnim-v0_1_0.type = "github";
  inputs.src-numnim-v0_1_0.owner = "YesDrX";
  inputs.src-numnim-v0_1_0.repo = "numnim";
  inputs.src-numnim-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."nimblas".url = "path:../../../n/nimblas";
  inputs."nimblas".type = "github";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".repo = "flake-nimble";
  inputs."nimblas".ref = "flake-pinning";
  inputs."nimblas".dir = "nimpkgs/n/nimblas";

  
  inputs."nimlapack".url = "path:../../../n/nimlapack";
  inputs."nimlapack".type = "github";
  inputs."nimlapack".owner = "riinr";
  inputs."nimlapack".repo = "flake-nimble";
  inputs."nimlapack".ref = "flake-pinning";
  inputs."nimlapack".dir = "nimpkgs/n/nimlapack";

  outputs = { self, nixpkgs, src-numnim-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-numnim-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-numnim-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}