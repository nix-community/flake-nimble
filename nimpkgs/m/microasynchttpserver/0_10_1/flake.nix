{
  description = ''A thin asynchronous HTTP server library, API compatible with Nim's built-in asynchttpserver.'';
  inputs.src-microasynchttpserver-0_10_1.flake = false;
  inputs.src-microasynchttpserver-0_10_1.type = "github";
  inputs.src-microasynchttpserver-0_10_1.owner = "philip-wernersbach";
  inputs.src-microasynchttpserver-0_10_1.repo = "microasynchttpserver";
  inputs.src-microasynchttpserver-0_10_1.ref = "refs/tags/0.10.1";
  
  
  inputs."picohttpparser".type = "github";
  inputs."picohttpparser".owner = "riinr";
  inputs."picohttpparser".repo = "flake-nimble";
  inputs."picohttpparser".ref = "flake-pinning";
  inputs."picohttpparser".dir = "nimpkgs/p/picohttpparser";

  outputs = { self, nixpkgs, src-microasynchttpserver-0_10_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-microasynchttpserver-0_10_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-microasynchttpserver-0_10_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}