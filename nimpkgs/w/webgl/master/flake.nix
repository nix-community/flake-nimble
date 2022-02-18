{
  description = ''Experimental wrapper to webgl for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-webgl-master.flake = false;
  inputs.src-webgl-master.type = "github";
  inputs.src-webgl-master.owner = "stisa";
  inputs.src-webgl-master.repo = "webgl";
  inputs.src-webgl-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-webgl-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webgl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-webgl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}