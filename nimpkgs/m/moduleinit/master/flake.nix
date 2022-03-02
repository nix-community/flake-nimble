{
  description = ''Nim module/thread initialisation ordering library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-moduleinit-master.flake = false;
  inputs.src-moduleinit-master.type = "github";
  inputs.src-moduleinit-master.owner = "skunkiferous";
  inputs.src-moduleinit-master.repo = "moduleinit";
  inputs.src-moduleinit-master.ref = "refs/heads/master";
  inputs.src-moduleinit-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-moduleinit-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moduleinit-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-moduleinit-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}