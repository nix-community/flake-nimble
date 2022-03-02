{
  description = ''Fully type safe, compile time only units library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-unchained-v0_1_7.flake = false;
  inputs.src-unchained-v0_1_7.type = "github";
  inputs.src-unchained-v0_1_7.owner = "SciNim";
  inputs.src-unchained-v0_1_7.repo = "unchained";
  inputs.src-unchained-v0_1_7.ref = "refs/tags/v0.1.7";
  inputs.src-unchained-v0_1_7.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-unchained-v0_1_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unchained-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unchained-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}