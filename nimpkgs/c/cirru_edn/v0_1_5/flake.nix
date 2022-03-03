{
  description = ''Extensible data notation based on Cirru syntax'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cirru_edn-v0_1_5.flake = false;
  inputs.src-cirru_edn-v0_1_5.type = "github";
  inputs.src-cirru_edn-v0_1_5.owner = "Cirru";
  inputs.src-cirru_edn-v0_1_5.repo = "cirru-edn.nim";
  inputs.src-cirru_edn-v0_1_5.ref = "refs/tags/v0.1.5";
  inputs.src-cirru_edn-v0_1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cirru_edn-v0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_edn-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_edn-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}