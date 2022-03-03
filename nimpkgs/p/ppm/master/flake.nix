{
  description = ''lib for ppm image'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-PPM-master.flake = false;
  inputs.src-PPM-master.type = "github";
  inputs.src-PPM-master.owner = "LemonHX";
  inputs.src-PPM-master.repo = "PPM-Nim";
  inputs.src-PPM-master.ref = "refs/heads/master";
  inputs.src-PPM-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-PPM-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-PPM-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-PPM-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}