{
  description = ''Support for serialization of objects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-serializetools-v1_10_0.flake = false;
  inputs.src-serializetools-v1_10_0.type = "github";
  inputs.src-serializetools-v1_10_0.owner = "JeffersonLab";
  inputs.src-serializetools-v1_10_0.repo = "serializetools";
  inputs.src-serializetools-v1_10_0.ref = "refs/tags/v1.10.0";
  inputs.src-serializetools-v1_10_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-serializetools-v1_10_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serializetools-v1_10_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-serializetools-v1_10_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}