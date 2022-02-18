{
  description = ''A simple and lightweight terminal coloring library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-colorize-master.flake = false;
  inputs.src-colorize-master.type = "github";
  inputs.src-colorize-master.owner = "molnarmark";
  inputs.src-colorize-master.repo = "colorize";
  inputs.src-colorize-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-colorize-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorize-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-colorize-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}