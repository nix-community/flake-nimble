{
  description = ''This package allows you to determine the running version of the Windows operating system.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-winversion-master.flake = false;
  inputs.src-winversion-master.type = "github";
  inputs.src-winversion-master.owner = "rockcavera";
  inputs.src-winversion-master.repo = "winversion";
  inputs.src-winversion-master.ref = "refs/heads/master";
  inputs.src-winversion-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-winversion-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-winversion-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-winversion-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}