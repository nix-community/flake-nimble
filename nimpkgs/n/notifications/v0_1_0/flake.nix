{
  description = ''Library for displaying notifications on the desktop'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-notifications-v0_1_0.flake = false;
  inputs.src-notifications-v0_1_0.type = "github";
  inputs.src-notifications-v0_1_0.owner = "dom96";
  inputs.src-notifications-v0_1_0.repo = "notifications";
  inputs.src-notifications-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-notifications-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notifications-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-notifications-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}