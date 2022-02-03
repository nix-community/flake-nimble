{
  description = ''🍕🍺 emoji support for Nim 👑 and the world 🌍'';
  inputs.src-nimoji-v0_1_1.flake = false;
  inputs.src-nimoji-v0_1_1.type = "github";
  inputs.src-nimoji-v0_1_1.owner = "pietroppeter";
  inputs.src-nimoji-v0_1_1.repo = "nimoji";
  inputs.src-nimoji-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-nimoji-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimoji-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimoji-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}