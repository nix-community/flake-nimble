{
  description = ''Extensible data notation based on Cirru syntax'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cirru_edn-v0_1_2.flake = false;
  inputs.src-cirru_edn-v0_1_2.type = "github";
  inputs.src-cirru_edn-v0_1_2.owner = "Cirru";
  inputs.src-cirru_edn-v0_1_2.repo = "cirru-edn.nim";
  inputs.src-cirru_edn-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cirru_edn-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_edn-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_edn-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}