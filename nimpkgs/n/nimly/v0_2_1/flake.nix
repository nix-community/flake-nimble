{
  description = ''Lexer Generator and Parser Generator as a Macro Library in Nim.'';
  inputs.src-nimly-v0_2_1.flake = false;
  inputs.src-nimly-v0_2_1.type = "github";
  inputs.src-nimly-v0_2_1.owner = "loloicci";
  inputs.src-nimly-v0_2_1.repo = "nimly";
  inputs.src-nimly-v0_2_1.ref = "refs/tags/v0.2.1";
  
  
  inputs."patty".url = "path:../../../p/patty";
  inputs."patty".type = "github";
  inputs."patty".owner = "riinr";
  inputs."patty".repo = "flake-nimble";
  inputs."patty".ref = "flake-pinning";
  inputs."patty".dir = "nimpkgs/p/patty";

  outputs = { self, nixpkgs, src-nimly-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimly-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimly-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}