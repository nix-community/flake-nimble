{
  description = ''Nim module for parsing ITN (TomTom intinerary) files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-itn-master.flake = false;
  inputs.src-itn-master.type = "github";
  inputs.src-itn-master.owner = "achesak";
  inputs.src-itn-master.repo = "nim-itn";
  inputs.src-itn-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-itn-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-itn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-itn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}