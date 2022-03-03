{
  description = ''Wrapper for the FreeImage library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-freeimage-master.flake = false;
  inputs.src-freeimage-master.type = "github";
  inputs.src-freeimage-master.owner = "barcharcraz";
  inputs.src-freeimage-master.repo = "nim-freeimage";
  inputs.src-freeimage-master.ref = "refs/heads/master";
  inputs.src-freeimage-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-freeimage-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-freeimage-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-freeimage-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}