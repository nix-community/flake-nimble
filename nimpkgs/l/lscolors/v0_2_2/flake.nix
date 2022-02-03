{
  description = ''A library for colorizing paths according to LS_COLORS'';
  inputs.src-lscolors-v0_2_2.flake = false;
  inputs.src-lscolors-v0_2_2.type = "github";
  inputs.src-lscolors-v0_2_2.owner = "joachimschmidt557";
  inputs.src-lscolors-v0_2_2.repo = "nim-lscolors";
  inputs.src-lscolors-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-lscolors-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lscolors-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lscolors-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}