{
  description = ''a nim library for drawing 2d shapes, text, and images to 32bit software pixel buffers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-suffer-master.flake = false;
  inputs.src-suffer-master.type = "github";
  inputs.src-suffer-master.owner = "emekoi";
  inputs.src-suffer-master.repo = "suffer";
  inputs.src-suffer-master.ref = "refs/heads/master";
  inputs.src-suffer-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-suffer-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-suffer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-suffer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}