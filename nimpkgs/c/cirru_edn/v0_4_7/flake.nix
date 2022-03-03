{
  description = ''Extensible data notation based on Cirru syntax'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cirru_edn-v0_4_7.flake = false;
  inputs.src-cirru_edn-v0_4_7.type = "github";
  inputs.src-cirru_edn-v0_4_7.owner = "Cirru";
  inputs.src-cirru_edn-v0_4_7.repo = "cirru-edn.nim";
  inputs.src-cirru_edn-v0_4_7.ref = "refs/tags/v0.4.7";
  inputs.src-cirru_edn-v0_4_7.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cirru_parser".type = "github";
  # inputs."cirru_parser".owner = "riinr";
  # inputs."cirru_parser".repo = "flake-nimble";
  # inputs."cirru_parser".ref = "flake-pinning";
  # inputs."cirru_parser".dir = "nimpkgs/c/cirru_parser";
  # inputs."cirru_parser".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cirru_parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."cirru_writer".type = "github";
  # inputs."cirru_writer".owner = "riinr";
  # inputs."cirru_writer".repo = "flake-nimble";
  # inputs."cirru_writer".ref = "flake-pinning";
  # inputs."cirru_writer".dir = "nimpkgs/c/cirru_writer";
  # inputs."cirru_writer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cirru_writer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cirru_edn-v0_4_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_edn-v0_4_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_edn-v0_4_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}