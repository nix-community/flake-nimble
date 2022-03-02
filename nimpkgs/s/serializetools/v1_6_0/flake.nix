{
  description = ''Support for serialization of objects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-serializetools-v1_6_0.flake = false;
  inputs.src-serializetools-v1_6_0.type = "github";
  inputs.src-serializetools-v1_6_0.owner = "JeffersonLab";
  inputs.src-serializetools-v1_6_0.repo = "serializetools";
  inputs.src-serializetools-v1_6_0.ref = "refs/tags/v1.6.0";
  inputs.src-serializetools-v1_6_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-serializetools-v1_6_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serializetools-v1_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-serializetools-v1_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}