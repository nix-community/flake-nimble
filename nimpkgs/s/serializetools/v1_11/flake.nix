{
  description = ''Support for serialization of objects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-serializetools-v1_11.flake = false;
  inputs.src-serializetools-v1_11.type = "github";
  inputs.src-serializetools-v1_11.owner = "JeffersonLab";
  inputs.src-serializetools-v1_11.repo = "serializetools";
  inputs.src-serializetools-v1_11.ref = "refs/tags/v1.11";
  inputs.src-serializetools-v1_11.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-serializetools-v1_11, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serializetools-v1_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-serializetools-v1_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}