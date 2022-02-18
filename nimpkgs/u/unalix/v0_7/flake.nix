{
  description = ''Small, dependency-free, fast Nim package (and CLI tool) for removing tracking fields from URLs.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-unalix-v0_7.flake = false;
  inputs.src-unalix-v0_7.type = "github";
  inputs.src-unalix-v0_7.owner = "AmanoTeam";
  inputs.src-unalix-v0_7.repo = "unalix-nim";
  inputs.src-unalix-v0_7.ref = "refs/tags/v0.7";
  
  
  inputs."htmlunescape".type = "github";
  inputs."htmlunescape".owner = "riinr";
  inputs."htmlunescape".repo = "flake-nimble";
  inputs."htmlunescape".ref = "flake-pinning";
  inputs."htmlunescape".dir = "nimpkgs/h/htmlunescape";

  outputs = { self, nixpkgs, flakeNimbleLib, src-unalix-v0_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unalix-v0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unalix-v0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}