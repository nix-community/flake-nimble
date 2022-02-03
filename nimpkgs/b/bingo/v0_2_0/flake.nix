{
  description = ''Binary serialization framework'';
  inputs.src-bingo-v0_2_0.flake = false;
  inputs.src-bingo-v0_2_0.type = "github";
  inputs.src-bingo-v0_2_0.owner = "planetis-m";
  inputs.src-bingo-v0_2_0.repo = "bingo";
  inputs.src-bingo-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-bingo-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bingo-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bingo-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}