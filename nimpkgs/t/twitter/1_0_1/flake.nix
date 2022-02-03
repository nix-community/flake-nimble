{
  description = ''Low-level twitter API wrapper library for Nim.'';
  inputs.src-twitter-1_0_1.flake = false;
  inputs.src-twitter-1_0_1.type = "github";
  inputs.src-twitter-1_0_1.owner = "snus-kin";
  inputs.src-twitter-1_0_1.repo = "twitter.nim";
  inputs.src-twitter-1_0_1.ref = "refs/tags/1.0.1";
  
  
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

  outputs = { self, nixpkgs, src-twitter-1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-twitter-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-twitter-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}