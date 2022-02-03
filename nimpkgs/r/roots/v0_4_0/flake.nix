{
  description = ''Root finding functions for Nim'';
  inputs.src-roots-v0_4_0.flake = false;
  inputs.src-roots-v0_4_0.type = "github";
  inputs.src-roots-v0_4_0.owner = "BarrOff";
  inputs.src-roots-v0_4_0.repo = "roots";
  inputs.src-roots-v0_4_0.ref = "refs/tags/v0.4.0";
  
  outputs = { self, nixpkgs, src-roots-v0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-roots-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-roots-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}