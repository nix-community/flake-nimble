{
  description = ''Module for working with RIS citation files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ris-master.flake = false;
  inputs.src-ris-master.type = "github";
  inputs.src-ris-master.owner = "achesak";
  inputs.src-ris-master.repo = "nim-ris";
  inputs.src-ris-master.ref = "refs/heads/master";
  inputs.src-ris-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ris-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ris-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ris-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}