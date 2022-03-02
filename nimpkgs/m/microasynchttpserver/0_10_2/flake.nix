{
  description = ''A thin asynchronous HTTP server library, API compatible with Nim's built-in asynchttpserver.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-microasynchttpserver-0_10_2.flake = false;
  inputs.src-microasynchttpserver-0_10_2.type = "github";
  inputs.src-microasynchttpserver-0_10_2.owner = "philip-wernersbach";
  inputs.src-microasynchttpserver-0_10_2.repo = "microasynchttpserver";
  inputs.src-microasynchttpserver-0_10_2.ref = "refs/tags/0.10.2";
  inputs.src-microasynchttpserver-0_10_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."picohttpparser".type = "github";
  # inputs."picohttpparser".owner = "riinr";
  # inputs."picohttpparser".repo = "flake-nimble";
  # inputs."picohttpparser".ref = "flake-pinning";
  # inputs."picohttpparser".dir = "nimpkgs/p/picohttpparser";
  # inputs."picohttpparser".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."picohttpparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-microasynchttpserver-0_10_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-microasynchttpserver-0_10_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-microasynchttpserver-0_10_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}