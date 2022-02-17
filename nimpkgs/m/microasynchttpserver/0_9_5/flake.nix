{
  description = ''A thin asynchronous HTTP server library, API compatible with Nim's built-in asynchttpserver.'';
  inputs.src-microasynchttpserver-0_9_5.flake = false;
  inputs.src-microasynchttpserver-0_9_5.type = "github";
  inputs.src-microasynchttpserver-0_9_5.owner = "philip-wernersbach";
  inputs.src-microasynchttpserver-0_9_5.repo = "microasynchttpserver";
  inputs.src-microasynchttpserver-0_9_5.ref = "refs/tags/0.9.5";
  
  
  inputs."picohttpparser".type = "github";
  inputs."picohttpparser".owner = "riinr";
  inputs."picohttpparser".repo = "flake-nimble";
  inputs."picohttpparser".ref = "flake-pinning";
  inputs."picohttpparser".dir = "nimpkgs/p/picohttpparser";

  outputs = { self, nixpkgs, src-microasynchttpserver-0_9_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-microasynchttpserver-0_9_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-microasynchttpserver-0_9_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}