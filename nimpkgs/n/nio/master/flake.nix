{
  description = ''A Mini Server Framework for Nim language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nio-master.flake = false;
  inputs.src-nio-master.type = "github";
  inputs.src-nio-master.owner = "KayraG";
  inputs.src-nio-master.repo = "nio";
  inputs.src-nio-master.ref = "refs/heads/master";
  inputs.src-nio-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nio-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}