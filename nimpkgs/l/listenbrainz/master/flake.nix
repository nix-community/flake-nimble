{
  description = ''Low-level multisync bindings to the ListenBrainz web API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-listenbrainz-master.flake = false;
  inputs.src-listenbrainz-master.type = "gitlab";
  inputs.src-listenbrainz-master.owner = "tandy1000";
  inputs.src-listenbrainz-master.repo = "listenbrainz-nim";
  inputs.src-listenbrainz-master.ref = "refs/heads/master";
  
  
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";

  
  inputs."nodejs".type = "github";
  inputs."nodejs".owner = "riinr";
  inputs."nodejs".repo = "flake-nimble";
  inputs."nodejs".ref = "flake-pinning";
  inputs."nodejs".dir = "nimpkgs/n/nodejs";

  
  inputs."https://github.com/alaviss/union".type = "github";
  inputs."https://github.com/alaviss/union".owner = "riinr";
  inputs."https://github.com/alaviss/union".repo = "flake-nimble";
  inputs."https://github.com/alaviss/union".ref = "flake-pinning";
  inputs."https://github.com/alaviss/union".dir = "nimpkgs/h/https://github.com/alaviss/union";

  
  inputs."https://github.com/tandy-1000/uniony".type = "github";
  inputs."https://github.com/tandy-1000/uniony".owner = "riinr";
  inputs."https://github.com/tandy-1000/uniony".repo = "flake-nimble";
  inputs."https://github.com/tandy-1000/uniony".ref = "flake-pinning";
  inputs."https://github.com/tandy-1000/uniony".dir = "nimpkgs/h/https://github.com/tandy-1000/uniony";

  outputs = { self, nixpkgs, flakeNimbleLib, src-listenbrainz-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-listenbrainz-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-listenbrainz-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}