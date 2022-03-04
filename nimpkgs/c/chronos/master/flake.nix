{
  description = ''An efficient library for asynchronous programming'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-chronos-master.flake = false;
  inputs.src-chronos-master.type = "github";
  inputs.src-chronos-master.owner = "status-im";
  inputs.src-chronos-master.repo = "nim-chronos";
  inputs.src-chronos-master.ref = "refs/heads/master";
  inputs.src-chronos-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."bearssl".type = "github";
  inputs."bearssl".owner = "riinr";
  inputs."bearssl".repo = "flake-nimble";
  inputs."bearssl".ref = "flake-pinning";
  inputs."bearssl".dir = "nimpkgs/b/bearssl";
  inputs."bearssl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bearssl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."httputils".type = "github";
  inputs."httputils".owner = "riinr";
  inputs."httputils".repo = "flake-nimble";
  inputs."httputils".ref = "flake-pinning";
  inputs."httputils".dir = "nimpkgs/h/httputils";
  inputs."httputils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httputils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/status-im/nim-unittest2.git".type = "github";
  inputs."https://github.com/status-im/nim-unittest2.git".owner = "riinr";
  inputs."https://github.com/status-im/nim-unittest2.git".repo = "flake-nimble";
  inputs."https://github.com/status-im/nim-unittest2.git".ref = "flake-pinning";
  inputs."https://github.com/status-im/nim-unittest2.git".dir = "nimpkgs/h/https://github.com/status-im/nim-unittest2.git";
  inputs."https://github.com/status-im/nim-unittest2.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/status-im/nim-unittest2.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-chronos-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chronos-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chronos-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}