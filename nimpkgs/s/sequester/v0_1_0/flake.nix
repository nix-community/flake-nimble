{
  description = ''Library for converting sequences to strings. Also has PHP-inspired explode and implode procs.'';
  inputs.src-sequester-v0_1_0.flake = false;
  inputs.src-sequester-v0_1_0.type = "github";
  inputs.src-sequester-v0_1_0.owner = "fallingduck";
  inputs.src-sequester-v0_1_0.repo = "sequester";
  inputs.src-sequester-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-sequester-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sequester-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sequester-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}