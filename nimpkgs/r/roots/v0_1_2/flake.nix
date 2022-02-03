{
  description = ''Root finding functions for Nim'';
  inputs.src-roots-v0_1_2.flake = false;
  inputs.src-roots-v0_1_2.type = "github";
  inputs.src-roots-v0_1_2.owner = "BarrOff";
  inputs.src-roots-v0_1_2.repo = "roots";
  inputs.src-roots-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-roots-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-roots-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-roots-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}