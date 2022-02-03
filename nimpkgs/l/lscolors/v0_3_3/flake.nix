{
  description = ''A library for colorizing paths according to LS_COLORS'';
  inputs.src-lscolors-v0_3_3.flake = false;
  inputs.src-lscolors-v0_3_3.type = "github";
  inputs.src-lscolors-v0_3_3.owner = "joachimschmidt557";
  inputs.src-lscolors-v0_3_3.repo = "nim-lscolors";
  inputs.src-lscolors-v0_3_3.ref = "refs/tags/v0.3.3";
  
  outputs = { self, nixpkgs, src-lscolors-v0_3_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lscolors-v0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lscolors-v0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}