{
  description = ''Euclidean Division & Euclidean Modulo'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-euclidean-master.flake = false;
  inputs.src-euclidean-master.type = "github";
  inputs.src-euclidean-master.owner = "juancarlospaco";
  inputs.src-euclidean-master.repo = "nim-euclidean";
  inputs.src-euclidean-master.ref = "refs/heads/master";
  inputs.src-euclidean-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-euclidean-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-euclidean-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-euclidean-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}