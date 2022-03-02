{
  description = ''Spurdification library and CLI'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-spurdify-v0_0_4.flake = false;
  inputs.src-spurdify-v0_0_4.type = "github";
  inputs.src-spurdify-v0_0_4.owner = "paradox460";
  inputs.src-spurdify-v0_0_4.repo = "spurdify";
  inputs.src-spurdify-v0_0_4.ref = "refs/tags/v0.0.4";
  inputs.src-spurdify-v0_0_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-spurdify-v0_0_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spurdify-v0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-spurdify-v0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}