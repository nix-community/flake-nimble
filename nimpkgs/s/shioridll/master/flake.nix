{
  description = ''The SHIORI DLL interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-shioridll-master.flake = false;
  inputs.src-shioridll-master.type = "github";
  inputs.src-shioridll-master.owner = "Narazaka";
  inputs.src-shioridll-master.repo = "shioridll-nim";
  inputs.src-shioridll-master.ref = "refs/heads/master";
  inputs.src-shioridll-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shioridll-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shioridll-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shioridll-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}