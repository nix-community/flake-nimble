{
  description = '' Websocket server and client implementation'';
  inputs.src-websock-main.flake = false;
  inputs.src-websock-main.type = "github";
  inputs.src-websock-main.owner = "status-im";
  inputs.src-websock-main.repo = "nim-websock";
  inputs.src-websock-main.ref = "refs/heads/main";
  
  
  inputs."chronos".url = "path:../../../c/chronos";
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";

  
  inputs."httputils".url = "path:../../../h/httputils";
  inputs."httputils".type = "github";
  inputs."httputils".owner = "riinr";
  inputs."httputils".repo = "flake-nimble";
  inputs."httputils".ref = "flake-pinning";
  inputs."httputils".dir = "nimpkgs/h/httputils";

  
  inputs."chronicles".url = "path:../../../c/chronicles";
  inputs."chronicles".type = "github";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".repo = "flake-nimble";
  inputs."chronicles".ref = "flake-pinning";
  inputs."chronicles".dir = "nimpkgs/c/chronicles";

  
  inputs."stew".url = "path:../../../s/stew";
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  
  inputs."asynctest".url = "path:../../../a/asynctest";
  inputs."asynctest".type = "github";
  inputs."asynctest".owner = "riinr";
  inputs."asynctest".repo = "flake-nimble";
  inputs."asynctest".ref = "flake-pinning";
  inputs."asynctest".dir = "nimpkgs/a/asynctest";

  
  inputs."nimcrypto".url = "path:../../../n/nimcrypto";
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."bearssl".url = "path:../../../b/bearssl";
  inputs."bearssl".type = "github";
  inputs."bearssl".owner = "riinr";
  inputs."bearssl".repo = "flake-nimble";
  inputs."bearssl".ref = "flake-pinning";
  inputs."bearssl".dir = "nimpkgs/b/bearssl";

  
  inputs."zlib".url = "path:../../../z/zlib";
  inputs."zlib".type = "github";
  inputs."zlib".owner = "riinr";
  inputs."zlib".repo = "flake-nimble";
  inputs."zlib".ref = "flake-pinning";
  inputs."zlib".dir = "nimpkgs/z/zlib";

  outputs = { self, nixpkgs, src-websock-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-websock-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-websock-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}