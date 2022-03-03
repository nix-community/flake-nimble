{
  description = ''A small package to create lindenmayer-systems or l-systems.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-Echon-master.flake = false;
  inputs.src-Echon-master.type = "github";
  inputs.src-Echon-master.owner = "eXodiquas";
  inputs.src-Echon-master.repo = "Echon";
  inputs.src-Echon-master.ref = "refs/heads/master";
  inputs.src-Echon-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-Echon-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Echon-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-Echon-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}