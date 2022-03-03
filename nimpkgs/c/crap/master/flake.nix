{
  description = ''`rm` files without fear'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-crap-master.flake = false;
  inputs.src-crap-master.type = "github";
  inputs.src-crap-master.owner = "icyphox";
  inputs.src-crap-master.repo = "crap";
  inputs.src-crap-master.ref = "refs/heads/master";
  inputs.src-crap-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-crap-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-crap-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-crap-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}