{
  description = ''Nim wrapper for (and with) Celtoys's Remotery'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-Remotery-master.flake = false;
  inputs.src-Remotery-master.type = "github";
  inputs.src-Remotery-master.owner = "Halsys";
  inputs.src-Remotery-master.repo = "Nim-Remotery";
  inputs.src-Remotery-master.ref = "refs/heads/master";
  inputs.src-Remotery-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-Remotery-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Remotery-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-Remotery-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}