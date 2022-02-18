{
  description = ''Support for serialization of objects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-serializetools-v1_16_0.flake = false;
  inputs.src-serializetools-v1_16_0.type = "github";
  inputs.src-serializetools-v1_16_0.owner = "JeffersonLab";
  inputs.src-serializetools-v1_16_0.repo = "serializetools";
  inputs.src-serializetools-v1_16_0.ref = "refs/tags/v1.16.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-serializetools-v1_16_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serializetools-v1_16_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-serializetools-v1_16_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}