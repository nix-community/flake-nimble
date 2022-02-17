{
  description = ''Audius is a simple client library for interacting with the Audius free API.'';
  inputs.src-audius-master.flake = false;
  inputs.src-audius-master.type = "github";
  inputs.src-audius-master.owner = "ceebeel";
  inputs.src-audius-master.repo = "audius";
  inputs.src-audius-master.ref = "refs/heads/master";
  
  
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";

  outputs = { self, nixpkgs, src-audius-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-audius-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-audius-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}