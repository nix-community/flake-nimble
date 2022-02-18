{
  description = ''Parser for Cirru syntax'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cirru_parser-v0_0_5.flake = false;
  inputs.src-cirru_parser-v0_0_5.type = "github";
  inputs.src-cirru_parser-v0_0_5.owner = "Cirru";
  inputs.src-cirru_parser-v0_0_5.repo = "parser.nim";
  inputs.src-cirru_parser-v0_0_5.ref = "refs/tags/v0.0.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cirru_parser-v0_0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_parser-v0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_parser-v0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}