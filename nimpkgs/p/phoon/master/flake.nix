{
  description = ''A web framework inspired by ExpressJS 🐇⚡'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-phoon-master.flake = false;
  inputs.src-phoon-master.type = "github";
  inputs.src-phoon-master.owner = "ducdetronquito";
  inputs.src-phoon-master.repo = "phoon";
  inputs.src-phoon-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-phoon-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-phoon-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-phoon-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}