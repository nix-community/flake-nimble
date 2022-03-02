{
  description = '' Websocket server and client implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-websock-main.flake = false;
  inputs.src-websock-main.type = "github";
  inputs.src-websock-main.owner = "status-im";
  inputs.src-websock-main.repo = "nim-websock";
  inputs.src-websock-main.ref = "refs/heads/main";
  inputs.src-websock-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."chronos".type = "github";
  # inputs."chronos".owner = "riinr";
  # inputs."chronos".repo = "flake-nimble";
  # inputs."chronos".ref = "flake-pinning";
  # inputs."chronos".dir = "nimpkgs/c/chronos";
  # inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."httputils".type = "github";
  # inputs."httputils".owner = "riinr";
  # inputs."httputils".repo = "flake-nimble";
  # inputs."httputils".ref = "flake-pinning";
  # inputs."httputils".dir = "nimpkgs/h/httputils";
  # inputs."httputils".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."httputils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."chronicles".type = "github";
  # inputs."chronicles".owner = "riinr";
  # inputs."chronicles".repo = "flake-nimble";
  # inputs."chronicles".ref = "flake-pinning";
  # inputs."chronicles".dir = "nimpkgs/c/chronicles";
  # inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."stew".type = "github";
  # inputs."stew".owner = "riinr";
  # inputs."stew".repo = "flake-nimble";
  # inputs."stew".ref = "flake-pinning";
  # inputs."stew".dir = "nimpkgs/s/stew";
  # inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."asynctest".type = "github";
  # inputs."asynctest".owner = "riinr";
  # inputs."asynctest".repo = "flake-nimble";
  # inputs."asynctest".ref = "flake-pinning";
  # inputs."asynctest".dir = "nimpkgs/a/asynctest";
  # inputs."asynctest".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."asynctest".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimcrypto".type = "github";
  # inputs."nimcrypto".owner = "riinr";
  # inputs."nimcrypto".repo = "flake-nimble";
  # inputs."nimcrypto".ref = "flake-pinning";
  # inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";
  # inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."bearssl".type = "github";
  # inputs."bearssl".owner = "riinr";
  # inputs."bearssl".repo = "flake-nimble";
  # inputs."bearssl".ref = "flake-pinning";
  # inputs."bearssl".dir = "nimpkgs/b/bearssl";
  # inputs."bearssl".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."bearssl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."zlib".type = "github";
  # inputs."zlib".owner = "riinr";
  # inputs."zlib".repo = "flake-nimble";
  # inputs."zlib".ref = "flake-pinning";
  # inputs."zlib".dir = "nimpkgs/z/zlib";
  # inputs."zlib".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zlib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-websock-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-websock-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-websock-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}