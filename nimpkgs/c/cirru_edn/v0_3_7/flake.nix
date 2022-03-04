{
  description = ''Extensible data notation based on Cirru syntax'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cirru_edn-v0_3_7.flake = false;
  inputs.src-cirru_edn-v0_3_7.type = "github";
  inputs.src-cirru_edn-v0_3_7.owner = "Cirru";
  inputs.src-cirru_edn-v0_3_7.repo = "cirru-edn.nim";
  inputs.src-cirru_edn-v0_3_7.ref = "refs/tags/v0.3.7";
  inputs.src-cirru_edn-v0_3_7.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."cirru_parser".type = "github";
  inputs."cirru_parser".owner = "riinr";
  inputs."cirru_parser".repo = "flake-nimble";
  inputs."cirru_parser".ref = "flake-pinning";
  inputs."cirru_parser".dir = "nimpkgs/c/cirru_parser";
  inputs."cirru_parser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/cirru/writer.nim".type = "github";
  inputs."https://github.com/cirru/writer.nim".owner = "riinr";
  inputs."https://github.com/cirru/writer.nim".repo = "flake-nimble";
  inputs."https://github.com/cirru/writer.nim".ref = "flake-pinning";
  inputs."https://github.com/cirru/writer.nim".dir = "nimpkgs/h/https://github.com/cirru/writer.nim";
  inputs."https://github.com/cirru/writer.nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/cirru/writer.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cirru_edn-v0_3_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_edn-v0_3_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_edn-v0_3_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}