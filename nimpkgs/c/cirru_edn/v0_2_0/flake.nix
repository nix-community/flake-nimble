{
  description = ''Extensible data notation based on Cirru syntax'';
  inputs.src-cirru_edn-v0_2_0.flake = false;
  inputs.src-cirru_edn-v0_2_0.type = "github";
  inputs.src-cirru_edn-v0_2_0.owner = "Cirru";
  inputs.src-cirru_edn-v0_2_0.repo = "cirru-edn.nim";
  inputs.src-cirru_edn-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-cirru_edn-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_edn-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cirru_edn-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}