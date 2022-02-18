{
  description = ''A Nim wrapper for the Spotify Web API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-spotify-v0_1_1.flake = false;
  inputs.src-spotify-v0_1_1.type = "github";
  inputs.src-spotify-v0_1_1.owner = "CORDEA";
  inputs.src-spotify-v0_1_1.repo = "spotify";
  inputs.src-spotify-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."oauth".type = "github";
  inputs."oauth".owner = "riinr";
  inputs."oauth".repo = "flake-nimble";
  inputs."oauth".ref = "flake-pinning";
  inputs."oauth".dir = "nimpkgs/o/oauth";

  outputs = { self, nixpkgs, flakeNimbleLib, src-spotify-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spotify-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-spotify-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}