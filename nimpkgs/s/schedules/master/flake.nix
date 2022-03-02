{
  description = ''A Nim scheduler library that lets you kick off jobs at regular intervals.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-schedules-master.flake = false;
  inputs.src-schedules-master.type = "github";
  inputs.src-schedules-master.owner = "soasme";
  inputs.src-schedules-master.repo = "nim-schedules";
  inputs.src-schedules-master.ref = "refs/heads/master";
  inputs.src-schedules-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-schedules-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-schedules-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-schedules-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}