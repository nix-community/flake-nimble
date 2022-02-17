{
  description = ''A simple terminal tetris in Nim'';
  inputs.src-nimtetris-v0_2_0.flake = false;
  inputs.src-nimtetris-v0_2_0.type = "github";
  inputs.src-nimtetris-v0_2_0.owner = "jiro4989";
  inputs.src-nimtetris-v0_2_0.repo = "nimtetris";
  inputs.src-nimtetris-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";

  outputs = { self, nixpkgs, src-nimtetris-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtetris-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimtetris-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}