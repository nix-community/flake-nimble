{
  description = ''Conway's Game of Life implemented in Nim'';
  inputs.src-hayaa-main.flake = false;
  inputs.src-hayaa-main.type = "github";
  inputs.src-hayaa-main.owner = "angus-lherrou";
  inputs.src-hayaa-main.repo = "hayaa";
  inputs.src-hayaa-main.ref = "refs/heads/main";
  
  
  inputs."illwill".url = "path:../../../i/illwill";
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";

  outputs = { self, nixpkgs, src-hayaa-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hayaa-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hayaa-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}