{
  description = ''Human friendly DateTime string representations, seconds to millenniums.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-datetime2human-master.flake = false;
  inputs.src-datetime2human-master.type = "github";
  inputs.src-datetime2human-master.owner = "juancarlospaco";
  inputs.src-datetime2human-master.repo = "nim-datetime2human";
  inputs.src-datetime2human-master.ref = "refs/heads/master";
  inputs.src-datetime2human-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-datetime2human-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-datetime2human-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-datetime2human-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}