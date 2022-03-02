{
  description = ''Transform latin letters to runes & vice versa. Four runic dialects available.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-riimut-main.flake = false;
  inputs.src-riimut-main.type = "github";
  inputs.src-riimut-main.owner = "stscoundrel";
  inputs.src-riimut-main.repo = "riimut-nim";
  inputs.src-riimut-main.ref = "refs/heads/main";
  inputs.src-riimut-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-riimut-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-riimut-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-riimut-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}