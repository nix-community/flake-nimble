{
  description = ''Library for detecting the format of an video file'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-vidhdr-master.flake = false;
  inputs.src-vidhdr-master.type = "github";
  inputs.src-vidhdr-master.owner = "achesak";
  inputs.src-vidhdr-master.repo = "nim-vidhdr";
  inputs.src-vidhdr-master.ref = "refs/heads/master";
  inputs.src-vidhdr-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-vidhdr-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vidhdr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vidhdr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}