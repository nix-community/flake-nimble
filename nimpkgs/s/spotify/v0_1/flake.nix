{
  description = ''A Nim wrapper for the Spotify Web API'';
  inputs.src-spotify-v0_1.flake = false;
  inputs.src-spotify-v0_1.type = "github";
  inputs.src-spotify-v0_1.owner = "CORDEA";
  inputs.src-spotify-v0_1.repo = "spotify";
  inputs.src-spotify-v0_1.ref = "refs/tags/v0.1";
  
  
  inputs."oauth".url = "path:../../../o/oauth";
  inputs."oauth".type = "github";
  inputs."oauth".owner = "riinr";
  inputs."oauth".repo = "flake-nimble";
  inputs."oauth".ref = "flake-pinning";
  inputs."oauth".dir = "nimpkgs/o/oauth";

  outputs = { self, nixpkgs, src-spotify-v0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spotify-v0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spotify-v0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}