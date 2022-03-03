{
  description = ''Nim module which provides clean, zero-effort command line parsing.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-simple_parseopt-v1_1_0.flake = false;
  inputs.src-simple_parseopt-v1_1_0.type = "github";
  inputs.src-simple_parseopt-v1_1_0.owner = "onelivesleft";
  inputs.src-simple_parseopt-v1_1_0.repo = "simple_parseopt";
  inputs.src-simple_parseopt-v1_1_0.ref = "refs/tags/v1.1.0";
  inputs.src-simple_parseopt-v1_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simple_parseopt-v1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simple_parseopt-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simple_parseopt-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}