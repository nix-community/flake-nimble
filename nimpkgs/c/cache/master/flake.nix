{
  description = ''A cache library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cache-master.flake = false;
  inputs.src-cache-master.type = "github";
  inputs.src-cache-master.owner = "planety";
  inputs.src-cache-master.repo = "cached";
  inputs.src-cache-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cache-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cache-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cache-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}