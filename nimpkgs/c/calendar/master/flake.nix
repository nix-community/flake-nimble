{
  description = ''A tiny calendar program'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-calendar-master.flake = false;
  inputs.src-calendar-master.type = "github";
  inputs.src-calendar-master.owner = "adam-mcdaniel";
  inputs.src-calendar-master.repo = "calendar";
  inputs.src-calendar-master.ref = "refs/heads/master";
  inputs.src-calendar-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-calendar-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-calendar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-calendar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}