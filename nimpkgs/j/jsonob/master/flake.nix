{
  description = ''JSON / Object mapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jsonob-master.flake = false;
  inputs.src-jsonob-master.type = "github";
  inputs.src-jsonob-master.owner = "cjxgm";
  inputs.src-jsonob-master.repo = "jsonob";
  inputs.src-jsonob-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jsonob-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsonob-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jsonob-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}