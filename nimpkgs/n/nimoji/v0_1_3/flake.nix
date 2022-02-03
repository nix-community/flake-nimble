{
  description = ''🍕🍺 emoji support for Nim 👑 and the world 🌍'';
  inputs.src-nimoji-v0_1_3.flake = false;
  inputs.src-nimoji-v0_1_3.type = "github";
  inputs.src-nimoji-v0_1_3.owner = "pietroppeter";
  inputs.src-nimoji-v0_1_3.repo = "nimoji";
  inputs.src-nimoji-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-nimoji-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimoji-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimoji-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}