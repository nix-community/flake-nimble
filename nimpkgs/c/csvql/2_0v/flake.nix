{
  description = ''csvql.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-csvql-2_0v.flake = false;
  inputs.src-csvql-2_0v.type = "github";
  inputs.src-csvql-2_0v.owner = "Bennyelg";
  inputs.src-csvql-2_0v.repo = "csvql";
  inputs.src-csvql-2_0v.ref = "refs/tags/2.0v";
  inputs.src-csvql-2_0v.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-csvql-2_0v, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csvql-2_0v;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-csvql-2_0v"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}