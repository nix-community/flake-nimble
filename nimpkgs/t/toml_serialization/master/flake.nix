{
  description = ''Flexible TOML serialization [not] relying on run-time type information'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-toml_serialization-master.flake = false;
  inputs.src-toml_serialization-master.type = "github";
  inputs.src-toml_serialization-master.owner = "status-im";
  inputs.src-toml_serialization-master.repo = "nim-toml-serialization";
  inputs.src-toml_serialization-master.ref = "refs/heads/master";
  inputs.src-toml_serialization-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."serialization".type = "github";
  inputs."serialization".owner = "riinr";
  inputs."serialization".repo = "flake-nimble";
  inputs."serialization".ref = "flake-pinning";
  inputs."serialization".dir = "nimpkgs/s/serialization";
  inputs."serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/status-im/nim-unittest2".type = "github";
  inputs."https://github.com/status-im/nim-unittest2".owner = "riinr";
  inputs."https://github.com/status-im/nim-unittest2".repo = "flake-nimble";
  inputs."https://github.com/status-im/nim-unittest2".ref = "flake-pinning";
  inputs."https://github.com/status-im/nim-unittest2".dir = "nimpkgs/h/https://github.com/status-im/nim-unittest2";
  inputs."https://github.com/status-im/nim-unittest2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/status-im/nim-unittest2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-toml_serialization-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-toml_serialization-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-toml_serialization-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}