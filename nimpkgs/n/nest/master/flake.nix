{
  description = ''RESTful URI router'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nest-master.flake = false;
  inputs.src-nest-master.type = "github";
  inputs.src-nest-master.owner = "kedean";
  inputs.src-nest-master.repo = "nest";
  inputs.src-nest-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nest-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nest-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nest-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}