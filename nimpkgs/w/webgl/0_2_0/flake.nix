{
  description = ''Experimental wrapper to webgl for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-webgl-0_2_0.flake = false;
  inputs.src-webgl-0_2_0.type = "github";
  inputs.src-webgl-0_2_0.owner = "stisa";
  inputs.src-webgl-0_2_0.repo = "webgl";
  inputs.src-webgl-0_2_0.ref = "refs/tags/0.2.0";
  inputs.src-webgl-0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-WebGL-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-WebGL-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-WebGL-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}