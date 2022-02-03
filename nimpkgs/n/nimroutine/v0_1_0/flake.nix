{
  description = ''A go routine like nim implementation'';
  inputs.src-nimroutine-v0_1_0.flake = false;
  inputs.src-nimroutine-v0_1_0.type = "github";
  inputs.src-nimroutine-v0_1_0.owner = "rogercloud";
  inputs.src-nimroutine-v0_1_0.repo = "nim-routine";
  inputs.src-nimroutine-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-nimroutine-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimroutine-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimroutine-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}