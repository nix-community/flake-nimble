{
  description = ''A thin asynchronous HTTP server library, API compatible with Nim's built-in asynchttpserver.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-microasynchttpserver-master.flake = false;
  inputs.src-microasynchttpserver-master.type = "github";
  inputs.src-microasynchttpserver-master.owner = "philip-wernersbach";
  inputs.src-microasynchttpserver-master.repo = "microasynchttpserver";
  inputs.src-microasynchttpserver-master.ref = "refs/heads/master";
  
  
  inputs."picohttpparser".type = "github";
  inputs."picohttpparser".owner = "riinr";
  inputs."picohttpparser".repo = "flake-nimble";
  inputs."picohttpparser".ref = "flake-pinning";
  inputs."picohttpparser".dir = "nimpkgs/p/picohttpparser";

  outputs = { self, nixpkgs, flakeNimbleLib, src-microasynchttpserver-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-microasynchttpserver-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-microasynchttpserver-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}