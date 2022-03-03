{
  description = ''pnm is library for PNM (Portable AnyMap).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pnm-v2_0_1.flake = false;
  inputs.src-pnm-v2_0_1.type = "github";
  inputs.src-pnm-v2_0_1.owner = "jiro4989";
  inputs.src-pnm-v2_0_1.repo = "pnm";
  inputs.src-pnm-v2_0_1.ref = "refs/tags/v2.0.1";
  inputs.src-pnm-v2_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pnm-v2_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pnm-v2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pnm-v2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}