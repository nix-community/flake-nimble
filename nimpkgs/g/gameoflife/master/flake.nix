{
  description = ''gameoflife is library for Game of Life.'';
  inputs.src-gameoflife-master.flake = false;
  inputs.src-gameoflife-master.type = "github";
  inputs.src-gameoflife-master.owner = "jiro4989";
  inputs.src-gameoflife-master.repo = "gameoflife";
  inputs.src-gameoflife-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gameoflife-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gameoflife-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gameoflife-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}