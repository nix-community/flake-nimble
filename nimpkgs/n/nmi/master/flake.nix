{
  description = ''nmi display animations aimed to correct users who accidentally enter nmi instead of nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nmi-master.flake = false;
  inputs.src-nmi-master.type = "github";
  inputs.src-nmi-master.owner = "jiro4989";
  inputs.src-nmi-master.repo = "nmi";
  inputs.src-nmi-master.ref = "refs/heads/master";
  inputs.src-nmi-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nmi-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nmi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nmi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}