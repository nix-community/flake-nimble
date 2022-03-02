{
  description = ''Flash ISO images to SD cards & USB drives, safely and easily.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ballena_itcher-master.flake = false;
  inputs.src-ballena_itcher-master.type = "github";
  inputs.src-ballena_itcher-master.owner = "juancarlospaco";
  inputs.src-ballena_itcher-master.repo = "ballena-itcher";
  inputs.src-ballena_itcher-master.ref = "refs/heads/master";
  inputs.src-ballena_itcher-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ballena_itcher-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ballena_itcher-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ballena_itcher-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}