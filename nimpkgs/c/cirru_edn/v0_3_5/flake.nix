{
  description = ''Extensible data notation based on Cirru syntax'';
  inputs.src-cirru_edn-v0_3_5.flake = false;
  inputs.src-cirru_edn-v0_3_5.type = "github";
  inputs.src-cirru_edn-v0_3_5.owner = "Cirru";
  inputs.src-cirru_edn-v0_3_5.repo = "cirru-edn.nim";
  inputs.src-cirru_edn-v0_3_5.ref = "refs/tags/v0.3.5";
  
  
  inputs."cirru_parser".url = "path:../../../c/cirru_parser";
  inputs."cirru_parser".type = "github";
  inputs."cirru_parser".owner = "riinr";
  inputs."cirru_parser".repo = "flake-nimble";
  inputs."cirru_parser".ref = "flake-pinning";
  inputs."cirru_parser".dir = "nimpkgs/c/cirru_parser";

  outputs = { self, nixpkgs, src-cirru_edn-v0_3_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_edn-v0_3_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cirru_edn-v0_3_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}