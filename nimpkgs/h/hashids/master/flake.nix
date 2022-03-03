{
  description = ''Nim implementation of Hashids'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hashids-master.flake = false;
  inputs.src-hashids-master.type = "github";
  inputs.src-hashids-master.owner = "achesak";
  inputs.src-hashids-master.repo = "nim-hashids";
  inputs.src-hashids-master.ref = "refs/heads/master";
  inputs.src-hashids-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hashids-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hashids-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hashids-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}