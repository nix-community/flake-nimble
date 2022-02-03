{
  description = ''🍕🍺 emoji support for Nim 👑 and the world 🌍'';
  inputs.src-nimoji-v0_1_2.flake = false;
  inputs.src-nimoji-v0_1_2.type = "github";
  inputs.src-nimoji-v0_1_2.owner = "pietroppeter";
  inputs.src-nimoji-v0_1_2.repo = "nimoji";
  inputs.src-nimoji-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-nimoji-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimoji-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimoji-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}