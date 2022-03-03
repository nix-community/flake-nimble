{
  description = ''Obsolete - please use spacenav instead!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-io-spacenav-master.flake = false;
  inputs.src-io-spacenav-master.type = "github";
  inputs.src-io-spacenav-master.owner = "nimious";
  inputs.src-io-spacenav-master.repo = "io-spacenav";
  inputs.src-io-spacenav-master.ref = "refs/heads/master";
  inputs.src-io-spacenav-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-io-spacenav-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-io-spacenav-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-io-spacenav-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}