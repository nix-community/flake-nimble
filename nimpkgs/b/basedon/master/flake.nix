{
  description = ''A library for cleanly creating an object or tuple based on another object or tuple'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-basedOn-master.flake = false;
  inputs.src-basedOn-master.type = "github";
  inputs.src-basedOn-master.owner = "KaceCottam";
  inputs.src-basedOn-master.repo = "basedOn";
  inputs.src-basedOn-master.ref = "refs/heads/master";
  inputs.src-basedOn-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-basedOn-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-basedOn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-basedOn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}