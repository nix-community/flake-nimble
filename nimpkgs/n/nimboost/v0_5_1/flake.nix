{
  description = ''Additions to the Nim's standard library, like boost for C++'';
  inputs.src-nimboost-v0_5_1.flake = false;
  inputs.src-nimboost-v0_5_1.type = "github";
  inputs.src-nimboost-v0_5_1.owner = "vegansk";
  inputs.src-nimboost-v0_5_1.repo = "nimboost";
  inputs.src-nimboost-v0_5_1.ref = "refs/tags/v0.5.1";
  
  
  inputs."patty".type = "github";
  inputs."patty".owner = "riinr";
  inputs."patty".repo = "flake-nimble";
  inputs."patty".ref = "flake-pinning";
  inputs."patty".dir = "nimpkgs/p/patty";

  outputs = { self, nixpkgs, src-nimboost-v0_5_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimboost-v0_5_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimboost-v0_5_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}