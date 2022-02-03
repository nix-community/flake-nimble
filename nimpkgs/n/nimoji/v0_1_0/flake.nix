{
  description = ''🍕🍺 emoji support for Nim 👑 and the world 🌍'';
  inputs.src-nimoji-v0_1_0.flake = false;
  inputs.src-nimoji-v0_1_0.type = "github";
  inputs.src-nimoji-v0_1_0.owner = "pietroppeter";
  inputs.src-nimoji-v0_1_0.repo = "nimoji";
  inputs.src-nimoji-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-nimoji-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimoji-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimoji-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}