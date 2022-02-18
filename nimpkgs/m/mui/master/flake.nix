{
  description = ''A tiny immediate-mode UI library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mui-master.flake = false;
  inputs.src-mui-master.type = "github";
  inputs.src-mui-master.owner = "angluca";
  inputs.src-mui-master.repo = "mui";
  inputs.src-mui-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mui-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}