{
  description = ''Flash ISO images to SD cards & USB drives, safely and easily.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ballena_itcher-0_0_1.flake = false;
  inputs.src-ballena_itcher-0_0_1.type = "github";
  inputs.src-ballena_itcher-0_0_1.owner = "juancarlospaco";
  inputs.src-ballena_itcher-0_0_1.repo = "ballena-itcher";
  inputs.src-ballena_itcher-0_0_1.ref = "refs/tags/0.0.1";
  inputs.src-ballena_itcher-0_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ballena_itcher-0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ballena_itcher-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ballena_itcher-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}