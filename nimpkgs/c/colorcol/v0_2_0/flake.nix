{
  description = ''Kakoune plugin for color preview'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-colorcol-v0_2_0.flake = false;
  inputs.src-colorcol-v0_2_0.type = "github";
  inputs.src-colorcol-v0_2_0.owner = "SolitudeSF";
  inputs.src-colorcol-v0_2_0.repo = "colorcol";
  inputs.src-colorcol-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, flakeNimbleLib, src-colorcol-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorcol-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-colorcol-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}