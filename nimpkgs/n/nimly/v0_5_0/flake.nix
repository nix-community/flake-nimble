{
  description = ''Lexer Generator and Parser Generator as a Macro Library in Nim.'';
  inputs.src-nimly-v0_5_0.flake = false;
  inputs.src-nimly-v0_5_0.type = "github";
  inputs.src-nimly-v0_5_0.owner = "loloicci";
  inputs.src-nimly-v0_5_0.repo = "nimly";
  inputs.src-nimly-v0_5_0.ref = "refs/tags/v0.5.0";
  
  
  inputs."patty".type = "github";
  inputs."patty".owner = "riinr";
  inputs."patty".repo = "flake-nimble";
  inputs."patty".ref = "flake-pinning";
  inputs."patty".dir = "nimpkgs/p/patty";

  outputs = { self, nixpkgs, src-nimly-v0_5_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimly-v0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimly-v0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}