{
  description = ''Extensible data notation based on Cirru syntax'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cirru_edn-v0_3_1.flake = false;
  inputs.src-cirru_edn-v0_3_1.type = "github";
  inputs.src-cirru_edn-v0_3_1.owner = "Cirru";
  inputs.src-cirru_edn-v0_3_1.repo = "cirru-edn.nim";
  inputs.src-cirru_edn-v0_3_1.ref = "refs/tags/v0.3.1";
  
  
  inputs."cirru-parser".type = "github";
  inputs."cirru-parser".owner = "riinr";
  inputs."cirru-parser".repo = "flake-nimble";
  inputs."cirru-parser".ref = "flake-pinning";
  inputs."cirru-parser".dir = "nimpkgs/c/cirru-parser";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cirru_edn-v0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_edn-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_edn-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}