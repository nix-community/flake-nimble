{
  description = ''Wrapper for the markdown rendering hoedown library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-midnight_dynamite-v0_2_4.flake = false;
  inputs.src-midnight_dynamite-v0_2_4.type = "github";
  inputs.src-midnight_dynamite-v0_2_4.owner = "Araq";
  inputs.src-midnight_dynamite-v0_2_4.repo = "midnight_dynamite";
  inputs.src-midnight_dynamite-v0_2_4.ref = "refs/tags/v0.2.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-midnight_dynamite-v0_2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-midnight_dynamite-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-midnight_dynamite-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}