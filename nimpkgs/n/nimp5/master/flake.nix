{
  description = ''Nim bindings for p5.js.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimp5-master.flake = false;
  inputs.src-nimp5-master.type = "github";
  inputs.src-nimp5-master.owner = "Foldover";
  inputs.src-nimp5-master.repo = "nim-p5";
  inputs.src-nimp5-master.ref = "refs/heads/master";
  inputs.src-nimp5-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimp5-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimp5-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimp5-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}