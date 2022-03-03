{
  description = ''This module performs character tests.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-asciitype-master.flake = false;
  inputs.src-asciitype-master.type = "github";
  inputs.src-asciitype-master.owner = "chocobo333";
  inputs.src-asciitype-master.repo = "asciitype";
  inputs.src-asciitype-master.ref = "refs/heads/master";
  inputs.src-asciitype-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-asciitype-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asciitype-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-asciitype-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}