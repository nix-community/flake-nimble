{
  description = ''Prebuilt components for the Fidget GUI library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-spinner-v0_2_0.flake = false;
  inputs.src-spinner-v0_2_0.type = "github";
  inputs.src-spinner-v0_2_0.owner = "tonogram";
  inputs.src-spinner-v0_2_0.repo = "spinner";
  inputs.src-spinner-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."fidget".type = "github";
  inputs."fidget".owner = "riinr";
  inputs."fidget".repo = "flake-nimble";
  inputs."fidget".ref = "flake-pinning";
  inputs."fidget".dir = "nimpkgs/f/fidget";

  
  inputs."gradient".type = "github";
  inputs."gradient".owner = "riinr";
  inputs."gradient".repo = "flake-nimble";
  inputs."gradient".ref = "flake-pinning";
  inputs."gradient".dir = "nimpkgs/g/gradient";

  outputs = { self, nixpkgs, flakeNimbleLib, src-spinner-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spinner-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-spinner-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}