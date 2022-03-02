{
  description = ''Transform latin letters to runes & vice versa. Four runic dialects available.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-riimut-v1_0_0.flake = false;
  inputs.src-riimut-v1_0_0.type = "github";
  inputs.src-riimut-v1_0_0.owner = "stscoundrel";
  inputs.src-riimut-v1_0_0.repo = "riimut-nim";
  inputs.src-riimut-v1_0_0.ref = "refs/tags/v1.0.0";
  inputs.src-riimut-v1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-riimut-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-riimut-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-riimut-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}