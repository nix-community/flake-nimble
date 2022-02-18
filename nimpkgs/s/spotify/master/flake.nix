{
  description = ''A Nim wrapper for the Spotify Web API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-spotify-master.flake = false;
  inputs.src-spotify-master.type = "github";
  inputs.src-spotify-master.owner = "CORDEA";
  inputs.src-spotify-master.repo = "spotify";
  inputs.src-spotify-master.ref = "refs/heads/master";
  
  
  inputs."oauth".type = "github";
  inputs."oauth".owner = "riinr";
  inputs."oauth".repo = "flake-nimble";
  inputs."oauth".ref = "flake-pinning";
  inputs."oauth".dir = "nimpkgs/o/oauth";

  outputs = { self, nixpkgs, flakeNimbleLib, src-spotify-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spotify-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-spotify-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}