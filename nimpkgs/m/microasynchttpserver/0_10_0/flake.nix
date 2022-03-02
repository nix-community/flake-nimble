{
  description = ''A thin asynchronous HTTP server library, API compatible with Nim's built-in asynchttpserver.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-microasynchttpserver-0_10_0.flake = false;
  inputs.src-microasynchttpserver-0_10_0.type = "github";
  inputs.src-microasynchttpserver-0_10_0.owner = "philip-wernersbach";
  inputs.src-microasynchttpserver-0_10_0.repo = "microasynchttpserver";
  inputs.src-microasynchttpserver-0_10_0.ref = "refs/tags/0.10.0";
  inputs.src-microasynchttpserver-0_10_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."picohttpparser".type = "github";
  # inputs."picohttpparser".owner = "riinr";
  # inputs."picohttpparser".repo = "flake-nimble";
  # inputs."picohttpparser".ref = "flake-pinning";
  # inputs."picohttpparser".dir = "nimpkgs/p/picohttpparser";
  # inputs."picohttpparser".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."picohttpparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-microasynchttpserver-0_10_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-microasynchttpserver-0_10_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-microasynchttpserver-0_10_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}