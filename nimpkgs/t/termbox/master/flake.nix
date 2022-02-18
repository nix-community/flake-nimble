{
  description = ''Termbox wrapper.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-termbox-master.flake = false;
  inputs.src-termbox-master.type = "github";
  inputs.src-termbox-master.owner = "fowlmouth";
  inputs.src-termbox-master.repo = "nim-termbox";
  inputs.src-termbox-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-termbox-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-termbox-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-termbox-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}