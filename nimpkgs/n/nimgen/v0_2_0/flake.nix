{
  description = ''C2nim helper to simplify and automate wrapping C libraries'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimgen-v0_2_0.flake = false;
  inputs.src-nimgen-v0_2_0.type = "github";
  inputs.src-nimgen-v0_2_0.owner = "genotrance";
  inputs.src-nimgen-v0_2_0.repo = "nimgen";
  inputs.src-nimgen-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."c2nim".type = "github";
  inputs."c2nim".owner = "riinr";
  inputs."c2nim".repo = "flake-nimble";
  inputs."c2nim".ref = "flake-pinning";
  inputs."c2nim".dir = "nimpkgs/c/c2nim";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimgen-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgen-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimgen-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}