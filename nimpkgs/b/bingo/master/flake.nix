{
  description = ''Binary serialization framework'';
  inputs.src-bingo-master.flake = false;
  inputs.src-bingo-master.type = "github";
  inputs.src-bingo-master.owner = "planetis-m";
  inputs.src-bingo-master.repo = "bingo";
  inputs.src-bingo-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-bingo-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bingo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bingo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}