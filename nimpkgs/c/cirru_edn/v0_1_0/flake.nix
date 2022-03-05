{
  description = ''Extensible data notation based on Cirru syntax'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cirru_edn-v0_1_0.flake = false;
  inputs.src-cirru_edn-v0_1_0.type = "github";
  inputs.src-cirru_edn-v0_1_0.owner = "Cirru";
  inputs.src-cirru_edn-v0_1_0.repo = "cirru-edn.nim";
  inputs.src-cirru_edn-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-cirru_edn-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cirru_edn-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_edn-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_edn-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}