{
  description = ''Flexible TOML serialization [not] relying on run-time type information'';
  inputs.src-toml_serialization-master.flake = false;
  inputs.src-toml_serialization-master.type = "github";
  inputs.src-toml_serialization-master.owner = "status-im";
  inputs.src-toml_serialization-master.repo = "nim-toml-serialization";
  inputs.src-toml_serialization-master.ref = "refs/heads/master";
  
  
  inputs."serialization".type = "github";
  inputs."serialization".owner = "riinr";
  inputs."serialization".repo = "flake-nimble";
  inputs."serialization".ref = "flake-pinning";
  inputs."serialization".dir = "nimpkgs/s/serialization";

  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  
  inputs."https://github.com/status-im/nim-unittest2".type = "github";
  inputs."https://github.com/status-im/nim-unittest2".owner = "riinr";
  inputs."https://github.com/status-im/nim-unittest2".repo = "flake-nimble";
  inputs."https://github.com/status-im/nim-unittest2".ref = "flake-pinning";
  inputs."https://github.com/status-im/nim-unittest2".dir = "nimpkgs/h/https://github.com/status-im/nim-unittest2";

  outputs = { self, nixpkgs, src-toml_serialization-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-toml_serialization-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-toml_serialization-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}