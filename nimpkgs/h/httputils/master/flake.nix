{
  description = ''Common utilities for implementing HTTP servers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-httputils-master.flake = false;
  inputs.src-httputils-master.type = "github";
  inputs.src-httputils-master.owner = "status-im";
  inputs.src-httputils-master.repo = "nim-http-utils";
  inputs.src-httputils-master.ref = "refs/heads/master";
  
  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  
  inputs."unittest2".type = "github";
  inputs."unittest2".owner = "riinr";
  inputs."unittest2".repo = "flake-nimble";
  inputs."unittest2".ref = "flake-pinning";
  inputs."unittest2".dir = "nimpkgs/u/unittest2";

  outputs = { self, nixpkgs, flakeNimbleLib, src-httputils-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httputils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-httputils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}