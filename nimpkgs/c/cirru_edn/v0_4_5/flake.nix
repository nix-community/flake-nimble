{
  description = ''Extensible data notation based on Cirru syntax'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cirru_edn-v0_4_5.flake = false;
  inputs.src-cirru_edn-v0_4_5.type = "github";
  inputs.src-cirru_edn-v0_4_5.owner = "Cirru";
  inputs.src-cirru_edn-v0_4_5.repo = "cirru-edn.nim";
  inputs.src-cirru_edn-v0_4_5.ref = "refs/tags/v0.4.5";
  
  
  inputs."cirru_parser".type = "github";
  inputs."cirru_parser".owner = "riinr";
  inputs."cirru_parser".repo = "flake-nimble";
  inputs."cirru_parser".ref = "flake-pinning";
  inputs."cirru_parser".dir = "nimpkgs/c/cirru_parser";

  
  inputs."cirru_writer".type = "github";
  inputs."cirru_writer".owner = "riinr";
  inputs."cirru_writer".repo = "flake-nimble";
  inputs."cirru_writer".ref = "flake-pinning";
  inputs."cirru_writer".dir = "nimpkgs/c/cirru_writer";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cirru_edn-v0_4_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_edn-v0_4_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_edn-v0_4_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}