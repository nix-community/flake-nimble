{
  description = ''A simple terminal tetris in Nim'';
  inputs.src-nimtetris-v0_1_3.flake = false;
  inputs.src-nimtetris-v0_1_3.type = "github";
  inputs.src-nimtetris-v0_1_3.owner = "jiro4989";
  inputs.src-nimtetris-v0_1_3.repo = "nimtetris";
  inputs.src-nimtetris-v0_1_3.ref = "refs/tags/v0.1.3";
  
  
  inputs."illwill".url = "path:../../../i/illwill";
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";

  outputs = { self, nixpkgs, src-nimtetris-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtetris-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimtetris-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}