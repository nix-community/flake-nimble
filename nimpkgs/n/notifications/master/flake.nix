{
  description = ''Library for displaying notifications on the desktop'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-notifications-master.flake = false;
  inputs.src-notifications-master.type = "github";
  inputs.src-notifications-master.owner = "dom96";
  inputs.src-notifications-master.repo = "notifications";
  inputs.src-notifications-master.ref = "refs/heads/master";
  inputs.src-notifications-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-notifications-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notifications-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-notifications-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}