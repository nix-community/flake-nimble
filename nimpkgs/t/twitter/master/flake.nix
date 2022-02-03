{
  description = ''Low-level twitter API wrapper library for Nim.'';
  inputs.src-twitter-master.flake = false;
  inputs.src-twitter-master.type = "github";
  inputs.src-twitter-master.owner = "snus-kin";
  inputs.src-twitter-master.repo = "twitter.nim";
  inputs.src-twitter-master.ref = "refs/heads/master";
  
  
  inputs."uuids".url = "path:../../../u/uuids";
  inputs."uuids".type = "github";
  inputs."uuids".owner = "riinr";
  inputs."uuids".repo = "flake-nimble";
  inputs."uuids".ref = "flake-pinning";
  inputs."uuids".dir = "nimpkgs/u/uuids";

  
  inputs."hmac".url = "path:../../../h/hmac";
  inputs."hmac".type = "github";
  inputs."hmac".owner = "riinr";
  inputs."hmac".repo = "flake-nimble";
  inputs."hmac".ref = "flake-pinning";
  inputs."hmac".dir = "nimpkgs/h/hmac";

  outputs = { self, nixpkgs, src-twitter-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-twitter-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-twitter-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}