{
  description = ''Extensible data notation based on Cirru syntax'';
  inputs.src-cirru_edn-v0_4_10.flake = false;
  inputs.src-cirru_edn-v0_4_10.type = "github";
  inputs.src-cirru_edn-v0_4_10.owner = "Cirru";
  inputs.src-cirru_edn-v0_4_10.repo = "cirru-edn.nim";
  inputs.src-cirru_edn-v0_4_10.ref = "refs/tags/v0.4.10";
  
  
  inputs."cirru_parser".url = "path:../../../c/cirru_parser";
  inputs."cirru_parser".type = "github";
  inputs."cirru_parser".owner = "riinr";
  inputs."cirru_parser".repo = "flake-nimble";
  inputs."cirru_parser".ref = "flake-pinning";
  inputs."cirru_parser".dir = "nimpkgs/c/cirru_parser";

  
  inputs."cirru_writer".url = "path:../../../c/cirru_writer";
  inputs."cirru_writer".type = "github";
  inputs."cirru_writer".owner = "riinr";
  inputs."cirru_writer".repo = "flake-nimble";
  inputs."cirru_writer".ref = "flake-pinning";
  inputs."cirru_writer".dir = "nimpkgs/c/cirru_writer";

  outputs = { self, nixpkgs, src-cirru_edn-v0_4_10, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_edn-v0_4_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cirru_edn-v0_4_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}