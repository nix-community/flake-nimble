{
  description = ''A validator for greek social security number (AMKA)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-amka-master.flake = false;
  inputs.src-amka-master.type = "github";
  inputs.src-amka-master.owner = "zoispag";
  inputs.src-amka-master.repo = "amka-nim";
  inputs.src-amka-master.ref = "refs/heads/master";
  inputs.src-amka-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-amka-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-amka-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-amka-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}