{
  description = ''Print fabulously in your terminal'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fab-v0_4_2.flake = false;
  inputs.src-fab-v0_4_2.type = "github";
  inputs.src-fab-v0_4_2.owner = "icyphox";
  inputs.src-fab-v0_4_2.repo = "fab";
  inputs.src-fab-v0_4_2.ref = "refs/tags/v0.4.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fab-v0_4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fab-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fab-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}