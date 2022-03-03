{
  description = ''Parsing and serializing for the TNetstring format.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-tnetstring-master.flake = false;
  inputs.src-tnetstring-master.type = "github";
  inputs.src-tnetstring-master.owner = "mahlonsmith";
  inputs.src-tnetstring-master.repo = "nim-tnetstring";
  inputs.src-tnetstring-master.ref = "refs/heads/master";
  inputs.src-tnetstring-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tnetstring-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tnetstring-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tnetstring-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}