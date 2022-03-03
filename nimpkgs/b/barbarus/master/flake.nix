{
  description = ''A simple extensible i18n engine.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-barbarus-master.flake = false;
  inputs.src-barbarus-master.type = "github";
  inputs.src-barbarus-master.owner = "cjxgm";
  inputs.src-barbarus-master.repo = "barbarus";
  inputs.src-barbarus-master.ref = "refs/heads/master";
  inputs.src-barbarus-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-barbarus-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-barbarus-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-barbarus-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}