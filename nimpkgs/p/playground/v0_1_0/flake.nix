{
  description = ''Web-based playground for testing Nim code.'';
  inputs.src-playground-v0_1_0.flake = false;
  inputs.src-playground-v0_1_0.type = "github";
  inputs.src-playground-v0_1_0.owner = "theduke";
  inputs.src-playground-v0_1_0.repo = "nim-playground";
  inputs.src-playground-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."jester".url = "path:../../../j/jester";
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  outputs = { self, nixpkgs, src-playground-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-playground-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-playground-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}