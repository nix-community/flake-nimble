{
  description = ''lib for ppm image'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ppm-master.flake = false;
  inputs.src-ppm-master.type = "github";
  inputs.src-ppm-master.owner = "LemonHX";
  inputs.src-ppm-master.repo = "ppm-Nim";
  inputs.src-ppm-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ppm-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ppm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ppm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}