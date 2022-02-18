{
  description = ''Experimental wrapper to webgl for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-webgl-0_2_1.flake = false;
  inputs.src-webgl-0_2_1.type = "github";
  inputs.src-webgl-0_2_1.owner = "stisa";
  inputs.src-webgl-0_2_1.repo = "webgl";
  inputs.src-webgl-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-webgl-0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webgl-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-webgl-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}