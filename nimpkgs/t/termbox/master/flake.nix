{
  description = ''Termbox wrapper.'';
  inputs.src-termbox-master.flake = false;
  inputs.src-termbox-master.type = "github";
  inputs.src-termbox-master.owner = "fowlmouth";
  inputs.src-termbox-master.repo = "nim-termbox";
  inputs.src-termbox-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-termbox-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-termbox-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-termbox-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}