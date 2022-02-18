{
  description = ''The SHIORI DLL interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-shioridll-master.flake = false;
  inputs.src-shioridll-master.type = "github";
  inputs.src-shioridll-master.owner = "Narazaka";
  inputs.src-shioridll-master.repo = "shioridll-nim";
  inputs.src-shioridll-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shioridll-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shioridll-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shioridll-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}