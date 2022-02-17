{
  description = ''A teminal othello (reversi) in Nim.'';
  inputs.src-nimothello-v1_0_0.flake = false;
  inputs.src-nimothello-v1_0_0.type = "github";
  inputs.src-nimothello-v1_0_0.owner = "jiro4989";
  inputs.src-nimothello-v1_0_0.repo = "nimothello";
  inputs.src-nimothello-v1_0_0.ref = "refs/tags/v1.0.0";
  
  
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";

  outputs = { self, nixpkgs, src-nimothello-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimothello-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimothello-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}