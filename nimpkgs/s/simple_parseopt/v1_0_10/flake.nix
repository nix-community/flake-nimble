{
  description = ''Nim module which provides clean, zero-effort command line parsing.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-simple_parseopt-v1_0_10.flake = false;
  inputs.src-simple_parseopt-v1_0_10.type = "github";
  inputs.src-simple_parseopt-v1_0_10.owner = "onelivesleft";
  inputs.src-simple_parseopt-v1_0_10.repo = "simple_parseopt";
  inputs.src-simple_parseopt-v1_0_10.ref = "refs/tags/v1.0.10";
  inputs.src-simple_parseopt-v1_0_10.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simple_parseopt-v1_0_10, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simple_parseopt-v1_0_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simple_parseopt-v1_0_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}