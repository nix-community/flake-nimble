{
  description = ''A library that will add useful tools to Nim's arsenal.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-extensions-master.flake = false;
  inputs.src-extensions-master.type = "github";
  inputs.src-extensions-master.owner = "jyapayne";
  inputs.src-extensions-master.repo = "nim-extensions";
  inputs.src-extensions-master.ref = "refs/heads/master";
  inputs.src-extensions-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-extensions-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-extensions-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-extensions-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}